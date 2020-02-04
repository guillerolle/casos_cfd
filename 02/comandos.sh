#!/bin/sh

# Crear malla original (blockMeshDict)
blockMesh
# Hacerla axisimetrica (extrudeMeshDict)
extrudeMesh
# Reparar caras rotas de la malla (collapseDict)
collapseEdges -overwrite
# Simular y guardar archivos log
simpleFoam | tee log.simpleFoam
foamLog log.simpleFoam

# gnuplot - Grafica simulacion no convergente simpleFoam

