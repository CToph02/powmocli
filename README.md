# PowMoCLI 🔋

**PowMoCLI** es una interfaz de línea de comandos (CLI) de estilo funcional desarrollada en **Bash** para gestionar de forma eficiente el "Modo de Conservación" en laptops Lenovo (series Legion e Ideapad). Esta herramienta permite extender la vida útil de la batería limitando su carga máxima a través del driver `ideapad_acpi`.

---

## 🚀 Características

- **Habilitar Modo:** Permite activar el modo de conservación para limitar la carga de la batería.
    
- **Deshabilitar Modo:** Desactivación sencilla para permitir cargas completas al 100%.
    
- **Visualización de Estado:** Consulta clara y rápida del estado actual del modo de conservación.
    
- **Sintaxis Profesional:** Soporte para argumentos largos (`--enable`, `--disable`) y sus respectivos shortcuts cortos.
    

---
## 📦 Instalación

1. **Preparar el archivo:**
    
    Bash
    
    ```
    chmod +x powmo.sh
    ```
    
2. **Instalar en el sistema (opcional):**
    
    Bash
    
    ```
    sudo cp powmo.sh /usr/local/bin/powmo
    ```
    

---

## 🕹️ Guía de Uso

La herramienta utiliza un estilo de código funcional para garantizar la fiabilidad en la ejecución.

### Comandos Disponibles

|**Opción Corta**|**Opción Larga**|**Descripción**|
|---|---|---|
|`-e`|`--enable`|Habilita el modo de conservación.|
|`-d`|`--disable`|Deshabilita el modo de conservación.|
|`-s`|`--status`|Muestra el reporte de estado actual (Visualizar estado).|

### Ejemplos Prácticos

- **Activar el modo de conservación:**
    
    
    
    ```Bash
    sudo powmo -e
    ```
    
- **Desactivar el modo de conservación:**
    
    
    
    ```Bash
    sudo powmo -d
    ```
    
- **Consultar configuración actual:**
    
    
    
    ```Bash
    sudo powmo -s
    ```
