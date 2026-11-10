# Práctica 7 – Modelo de Ising (Monte Carlo)

Simulación en Fortran 90, gráficas en Python.

## Estructura

```
src/ising.f90        programa Fortran
python/graficas.py   gráficas
data/                salidas de la simulación (no se suben a git)
.vscode/tasks.json   compilar y ejecutar (Windows y macOS)
```

## Uso (desde la carpeta del proyecto)

En VS Code: `Ctrl/Cmd + Shift + B` compila. Para ejecutar: *Terminal → Run Task → Ejecutar*.

A mano:

```bash
gfortran -O2 -Wall -o ising src/ising.f90   # en Windows: -o ising.exe
./ising                                     # en Windows: .\ising.exe
python python/graficas.py
```

Requisitos: `gfortran` en el PATH (Windows: MSYS2/MinGW; macOS: `brew install gcc`) y Python con `numpy` y `matplotlib`.
