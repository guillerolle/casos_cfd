#!/bin/sh

# Resetear caso completo
foamListTimes -rm
rm -r postProcessing
rm -r logs
#rm -r constant/polyMesh

# Crear malla original (blockMeshDict)
#blockMesh
# Hacerla axisimetrica (extrudeMeshDict)
#extrudeMesh
# Reparar caras rotas de la malla (collapseDict)
#collapseEdges -overwrite
# Simular y guardar archivos log
mpirun -n 4 scalarTransportFoam -parallel | tee -a log.scalarTransportFoam
foamLog log.scalarTransportFoam

postProcess -func 'patchAverage'
# gnuplot - Grafica simulacion simpleFoam
gnuplot --persist graficar_conc.gp
