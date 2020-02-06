cd 'logs'
set term wxt 0
plot 'pFinalRes_0' w l title "pFinalRes_0", 'UxFinalRes_0' w l title "UxFinalRes_0", 'UyFinalRes_0' w l title "UyFinalRes_0", 'UzFinalRes_0' w l title "UzFinalRes_0"
set logscale y
set grid
replot
set term wxt 1
plot 'p_0' w l title "p_0", 'Ux_0' w l title "Ux_0", 'Uy_0' w l title "Uy_0", 'Uz_0' w l title "Uz_0"
set logscale y
set grid
replot
