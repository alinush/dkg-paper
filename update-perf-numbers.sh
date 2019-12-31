#!/bin/sh
set -e
 
scriptdir=$(cd $(dirname $0); pwd -P)

repodir=$HOME/repos/libpolycrypto/experiments

if [ ! -d $repodir ]; then
    echo "No libpolycrypto repo found in '$repodir'!"
    exit 1
fi

$repodir/dkg-bw/export-latex.py $scriptdir/perf-dkg-bw.tex $repodir/dkg-bw/bandwidth-1M.csv
$repodir/dkg/export-latex.py $scriptdir/perf-dkg-time.tex $repodir/dkg/*kate*.csv $repodir/dkg/*amt*.csv
$repodir/vss/export-latex.py $scriptdir/perf-vss-time.tex $repodir/vss/*kate*.csv $repodir/vss/*amt*.csv
$repodir/threshsig/export-latex.py $scriptdir/perf-bls-time.tex $repodir/threshsig/*.csv
