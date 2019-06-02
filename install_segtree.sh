#!/bin/bash

# Download this file (install_segtree.sh) and put it in a directory, e.g. $HOME/mysegtree/
# > bash install_segtree.sh
# 
# It will download all repo from github and start compiling.
# After compilation, there are four static libraries (.a).
# libutility/lib/`uname -m`/libutility.a
# libfeature/lib/`uname -m`/libfeature.a
# libsegtree/lib/`uname -m`/libsegtree.a  
# 
# The HAC segmentation example is in libdtw/test/
# > cd libsegtree/test/
# > make


server="http://github.com/chunan"
repo="libutility libfeature libsegtree"

# Download repo
for r in $repo; do  
  git clone $server/$r.git
done

# Make repo
for r in $repo; do  
  make -C $r
done

