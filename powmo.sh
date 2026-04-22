#!/bin/bash

# ==============================================================================
# Nombre: PowMoCLI
# Descripción: Gestión del modo de conservación de batería para Lenovo Legion/Ideapad
# ==============================================================================

readonly ACPI_PATH="/sys/bus/platform/drivers/ideapad_acpi/VPC2004:00/conservation_mode"
readonly VERSION="1.0.0"

check_compatibility() {
    [[ -f "$ACPI_PATH" ]] || { echo "Error: El driver ideapad_acpi no fue detectado."; exit 1; }
}

check_privileges() {
    [[ $EUID -eq 0 ]] || { echo "Error: Se requieren privilegios de root (sudo)."; exit 1; }
}

get_status() {
    cat "$ACPI_PATH"
}

display_status() {
    local status=$(get_status)
    if [[ "$status" -eq 1 ]]; then
        echo "Estado actual: [ACTIVO] El modo de conservación está habilitado."
    else
        echo "Estado actual: [INACTIVO] El modo de conservación está deshabilitado."
    fi
}

set_conservation_mode() {
    local value=$1
    echo "$value" > "$ACPI_PATH" && display_status
}

show_help() {
    echo "PowMo CLI"
    echo "Uso: powmo [opción]"
    echo ""
    echo "Opciones:"
    echo "  -e, --enable    Habilita el modo de conservación (Carga hasta 60%)"
    echo "  -d, --disable   Deshabilita el modo de conservación (Carga hasta 100%)"
    echo "  -s, --status    Muestra el estado actual"
    echo "  -h, --help      Muestra este mensaje de ayuda"
}

main() {
    check_compatibility

    if [[ $# -eq 0 ]]; then
        show_help
        exit 0
    fi

    case "$1" in
        -e|--enable)
            check_privileges
            set_conservation_mode 1
            ;;
        -d|--disable)
            check_privileges
            set_conservation_mode 0
            ;;
        -s|--status)
            display_status
            ;;
        -h|--help)
            show_help
            ;;
        *)
            echo "Error: Opción no válida."
            show_help
            exit 1
            ;;
    esac
}

main "$@"
