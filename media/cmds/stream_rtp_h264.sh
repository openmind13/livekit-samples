#!/bin/bash

ffmpeg -re -stream_loop -1 \
    -i ../files/big_buck_bunny.mp4 \
    -c:v copy \
    -an \
    -sdp_file h264_rtp.sdp \
    -f rtp "rtp://127.0.0.1:5500"