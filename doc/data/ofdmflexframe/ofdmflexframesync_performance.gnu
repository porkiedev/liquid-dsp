#
# ofdmflexframesync_performance.gnu
#
reset
set terminal postscript eps enhanced color solid rounded
set xrange [-6:6]
set yrange [0:1]
set size ratio 0.65
set size 1.0
set xlabel 'SNR [dB]'
set ylabel 'Probability of Detection/Decoding'
set key bottom right nobox
set grid xtics ytics
set pointsize 0.6
set key top left nobox

set pointsize 0.5

set grid linetype 1 linecolor rgb '#cccccc' lw 1
plot 'figures.gen/ofdmflexframesync_performance.dat' using 1:2 with linespoints linewidth 2 pointtype 7 linecolor rgb '#004080' title 'Frame Detection',\
     'figures.gen/ofdmflexframesync_performance.dat' using 1:3 with linespoints linewidth 2 pointtype 7 linecolor rgb '#408000' title 'Header Decoding'

#    'figures.gen/ofdmflexframesync_performance.dat' using 1:4 with linespoints linewidth 2 pointtype 7 linecolor rgb '#800040' title 'Payload Decoding'

