# PowMoCLI 🔋

**PowMoCLI** es una interfaz de línea de comandos (CLI) desarrollada en Bash para gestionar de forma inteligente el "Modo de Conservación" en laptops Lenovo (series Legion e Ideapad). Esta herramienta permite extender la vida útil de la batería limitando su carga máxima a través del driver `ideapad_acpi`.

---

## 🚀 Características

* **Activación Inteligente:** Permite activar el modo de conservación de forma inmediata o programarlo para que se active al alcanzar un porcentaje de carga específico.
* **Control de Estado**: Desactivación sencilla para permitir cargas completas al 100%.
* **Monitoreo:** Visualización clara del estado del driver, nivel de batería actual y umbrales configurados.
* **Sintaxis Profesional:** Soporte para argumentos largos (`--enable`) y cortos (`-e`).

---

## 📦 Instalación

1.  **Preparar el archivo:**
    ```bash
    chmod +x powmo.sh
    ```

2.  **Instalar en el sistema (opcional):**
    ```bash
    sudo mv powmo.sh /usr/local/bin/powmo
    ```

---

## 🕹️ Guía de Uso

La herramienta sigue el estándar POSIX para argumentos.

### Comandos Disponibles

| Opción Corta | Opción Larga | Argumento | Descripción |
| :--- | :--- | :--- | :--- |
| `-e` | `--enable` | `[porcentaje]` | Activa el modo. Si se incluye un %, espera a que la batería llegue a ese nivel. |
| `-d` | `--disable` | (ninguno) | Desactiva el modo de conservación. |
| `-s` | `--status` | (ninguno) | Muestra el reporte de estado actual. |

### Ejemplos Prácticos

* **Activar inmediatamente:**
    ```bash
    powmo --enable
    ```
* **Activar automáticamente al llegar al 80%:**
    ```bash
    powmo -e 80
    ```
* **Consultar configuración actual:**
    ```bash
    powmo -s
    ```
