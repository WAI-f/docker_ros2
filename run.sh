docker run -it --privileged=true  --net=host \
  --gpus all     \
   -p 11311:11311 \
  --env="DISPLAY" \
  --env="QT_X11_NO_MITSHM=1" \
  --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
  -v /home/wai-f/Projects/ros2_files:/data \
  --name ros2_v1 ros2:base /bin/bash

xhost +