reset
set title "Phantom power available current"
set xlabel "Desired circuit supply voltage"
set ylabel "Maximum available current"
set format x "%0.0s%cV"
set format y "%0.0s%cA"
set grid
R=(6.8e3+1e3)/2
i(v) = (48-v)/R

#set term svg size 640,480 fixed enhanced font 'Arial,12' butt dashlength 1.0
#set output "phantom-power-current-vs-voltage-full.svg"
set term qt 0
plot [v=0:48] i(v) title ""

#set term svg size 640,480 fixed enhanced font 'Arial,12' butt dashlength 1.0
#set output "phantom-power-current-vs-voltage-zoom.svg"
set term qt 1
set xtics 1
plot [v=0:21] i(v) title ""
