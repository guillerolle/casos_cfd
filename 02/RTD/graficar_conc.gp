cd 'postProcessing/patchAverage/0'
set term wxt 0
plot 'surfaceFieldValue.dat' w l title "outlet"
set xlabel "Tiempo [s]"
set ylabel "Concentracion []"
set grid
replot
