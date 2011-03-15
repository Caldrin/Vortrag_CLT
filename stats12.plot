set output 'stats12.png'
set terminal png
set datafile separator ','
set xdata time
set timefmt "%Y%m"
unset xlabel
set xtics out nomirror 1 autofreq scale 1,0.5
set xrange ["199508":"201103"]
set tics format x "%m/%Y"


set title 'New uploads to CPAN'
plot 'stats12.txt' using 1:2 with steps lt 1 lw 1 title 'Authors', \
     'stats12.txt' using 1:3 with steps lt 2 lw 1 title 'Distributions'
