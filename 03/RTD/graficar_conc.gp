cd 'postProcessing/patchAverage/1.3'
set term wxt 0
plot 'surfaceFieldValue.dat' w l title "outlet"
set xlabel "Tiempo [s]"
set ylabel "Concentracion []"
set grid
replot
