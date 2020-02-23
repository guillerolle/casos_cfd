#!/bin/sh

# Resetear caso completo
foamListTimes -processor -rm
rm -r postProcessing
rm -r logs
rm log.scalarTransportFoam

mpirun -n 4 scalarTransportFoam -parallel | tee -a log.scalarTransportFoam
foamLog log.scalarTransportFoam

mpirun -n 4 postProcess -parallel -func 'patchAverage'
# gnuplot - Grafica simulacion simpleFoam
gnuplot --persist graficar_conc.gp
