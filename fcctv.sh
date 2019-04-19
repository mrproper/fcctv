#!/usr/bin/env sh
/usr/bin/ffmpeg \
   -loglevel ${LOG_LEVEL} \
   -rtsp_transport ${RTSP_TRANSPORT} \
   -i rtsp://${USERNAME}:${PASSWORD}@${HOST}:${PORT}${URI} \
   -c:v copy \
   -f segment \
   -segment_time 60 \
   -reset_timestamps 1 \
   -strftime 1 \
   -segment_time ${SEGMENT_SECONDS} \
   ${NAME}-%Y-%m-%dT%H-%M-%S.mp4
