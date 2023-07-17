## Flash the firmware on ROSbot

```bash
docker stop rosbot ros-master || true && docker run --rm -it --privileged \
husarion/rosbot:noetic \
/flash-firmware.py /root/firmware_diff.bin
```

```bash
docker compose up
```

```bash
docker exec -it teleop bash
# rosrun teleop_twist_keyboard teleop_twist_keyboard.py
```