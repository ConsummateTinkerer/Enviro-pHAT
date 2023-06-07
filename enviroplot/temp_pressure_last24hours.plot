# Create new plot
reset
unset key 
set key off 
set terminal png medium size 640,480

# csv DateTime format
set datafile separator ","
set timefmt "%d-%m-%Y %H:%M:%S"

# Graph formatting
set title "Temperature and Pressure Over the Last 24 Hours"
# set grid

# x axis formatting
set xdata time
set format x "%l%p"

# y axis formatting
set ytics 1 nomirror tc lt 1
set ylabel "Temperature" tc lt 1

# y2 axis formatting
set y2tics 1 nomirror tc lt 2
set y2label "Pressure" tc lt 2

# Plot the data
plot '< tail -n 90 /home/foo/Dev/RasPi/enviroplot/enviroplot.csv' using 1:2 axes x1y1, '< tail -n 90 /home/foo/Dev/RasPi/enviroplot/enviroplot.csv' using 1:3 axes x1y2 with lines
