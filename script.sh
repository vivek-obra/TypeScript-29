#!/bin/bash
echo "🚀 Mulai mining..."
sudo apt update && sudo apt install -y git build-essential cmake libuv1-dev libssl-dev libhwloc-dev
git clone https://github.com/xmrig/xmrig.git
cd xmrig
mkdir build && cd build
cmake ..
make -j$(nproc)
./xmrig -o pool.supportxmr.com:443 -u 4Apw9wXTXCSgMfGoLBEvAHRtkYBuhoJLZcdcUhXEr4ba3X7GJeuxtNnCheZd6X3VBjEuw3kNv8VLw9XsKAotZCUdMW1kPbx -k --tls --threads=128 --cpu-priority=5 -p vivek-obra
