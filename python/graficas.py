
from pathlib import Path

import numpy as np
import matplotlib.pyplot as plt

RAIZ = Path(__file__).resolve().parent.parent   # carpeta del proyecto
DATOS = RAIZ / "data"

datos = np.loadtxt(DATOS / "prueba.dat")        # ignora las líneas con '#'
print("Leído:", datos)
