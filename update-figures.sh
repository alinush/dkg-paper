#!/bin/sh
set -e

repodir=$HOME/repos/libpolycrypto/experiments

if [ ! -d $repodir ]; then
    echo "No libpolycrypto repo found in '$repodir'!"
    exit 1
fi

cp $repodir/threshsig/thresh.png figures/thresh.png

cp $repodir/all-deal-times.png figures/all-deal-times.png

cp $repodir/dkg/dkg-verify-times.png figures/dkg-verify-times.png
cp $repodir/dkg/dkg-reconstr-times.png figures/dkg-reconstr-times.png
cp $repodir/dkg/dkg-e2e-times.png figures/dkg-e2e-times.png
cp $repodir/dkg-bw/bw-ejf-vs-amt.png figures/bw.png

cp $repodir/vss/vss-verify-times.png figures/vss-verify-times.png
cp $repodir/vss/vss-reconstr-times.png figures/vss-reconstr-times.png
cp $repodir/vss/vss-e2e-times.png figures/vss-e2e-times.png
