# PowMoCLI 🔋

Herramienta de consola para gestionar el **Modo de Conservación** en laptops Lenovo (Legion/Ideapad) bajo Linux.

## Requisitos
- Kernel de Linux con el módulo `ideapad_acpi` cargado.
- Privilegios de `sudo` para modificar estados del kernel.

## Instalación rápida
1. Clona o descarga el script `powmo.sh`.
2. Dale permisos de ejecución:
   ```bash
   chmod +x powmo.sh

(Opcional) Muévelo a tu bin para usarlo globalmente: sudo mv powmo.sh /usr/local/bin/powmo

## Uso de Comandos
--- 
Comando Corto	Comando Largo	Descripción
---
-e [num]	--enable [num]	Activa el modo. Si incluyes un número, se activará al llegar a ese %.
---
-d		--disable	Desactiva el modo por completo.
---
-s		--status	Muestra si está activo y el umbral configurado.

## Ejemplos
Activar ahora: powmo -e
Activar cuando llegue al 60%: powmo --enable 60
Consultar estado: powmo -s

Persistencia: El umbral de porcentaje se guarda en ~/.config/powmocli/threshold.
