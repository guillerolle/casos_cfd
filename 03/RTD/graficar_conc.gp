cd 'postProcessing/patchAverage/80'
set term wxt 0
plot 'surfaceFieldValue.dat' w l title "outlet"
set xlabel "Tiempo [s]"
set ylabel "Concentracion []"
set grid
replot
