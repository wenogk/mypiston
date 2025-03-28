#!/bin/bash
curl "https://nodejs.org/dist/v20.11.1/node-v20.11.1-linux-x64.tar.xz" -o node.tar.xz
tar xf node.tar.xz --strip-components=1
rm node.tar.xz

export PATH=$PWD/bin:$PATH
# install datastructures js packages.
npm install -g @datastructures-js/stack @datastructures-js/queue @datastructures-js/deque @datastructures-js/linked-list @datastructures-js/set @datastructures-js/heap @datastructures-js/priority-queue @datastructures-js/binary-search-tree @datastructures-js/trie @datastructures-js/graph