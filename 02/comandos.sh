#!/bin/sh

# Resetear caso completo
foamListTimes -rm
rm -r postProcessing
rm -r logs
rm -r constant/polyMesh

# Crear malla original (blockMeshDict)
blockMesh
# Hacerla axisimetrica (extrudeMeshDict)
extrudeMesh
# Reparar caras rotas de la malla (collapseDict)
collapseEdges -overwrite
# Simular y guardar archivos log
simpleFoam | tee log.simpleFoam
foamLog log.simpleFoam

# gnuplot - Grafica simulacion simpleFoam
gnuplot --persist graficar_res.gp
