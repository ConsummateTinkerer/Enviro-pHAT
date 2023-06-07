## All the enviroplot files for the Enviro pHAT

Collect data from the Enviro pHAT with Python, process it and create graphs with gnuplot

The Python file to collect data
* enviroplot.py - Collects data from the Enviro pHAT and writes to the csv file

The gnuplot scripts that interpret the .csv rows and produce the .png graphs
* temp_pressure_last24hours.plot - Shows Temperature and Pressure over the last 24 hours
* temp_pressure_last7days.plot - Shows Temperature and Pressure over the last 7 days
* temp_pressure_all.plot - Shows Temperature and Pressure over all collected data

The sh file that bundles the files in correct order
* enviroplot.sh - Wraps the scripts together and can be run regularly via a cron job
