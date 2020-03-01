cd 'logs'
set term wxt 0
plot 'p_0' w l title "p_0", 'Ux_0' w l title "Ux_0", 'Uy_0' w l title "Uy_0", 'Uz_0' w l title "Uz_0"
set logscale y
set grid
replot
