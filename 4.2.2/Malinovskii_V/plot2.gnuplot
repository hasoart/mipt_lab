set terminal png size 1920, 1080 font "Helvetica,30"

set key right bottom

set tics font "Helvetica,30"

set xrange[-11:11]
#set yrange[0:3.1]

set xlabel 'P, кПа'
set ylabel 'Delta, мкм'

set grid ytics mytics  # draw lines for each ytics and mytics
set mytics 5           # set the spacing for the mytics
set grid

set grid ytics lc rgb "#bbbbbb" lw 2 lt 0
set grid xtics lc rgb "#bbbbbb" lw 2 lt 0

f(x) = a * x + b

fit f(x) 'plot2.data' u 1:3 via a, b

plot 'plot2.data' u 1:3:2:4 w xyerrorbars notitle, f(x) notitle
#pause -1
