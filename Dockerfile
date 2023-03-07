FROM croconut/linux-downloader

RUN apt-get update && apt-get install -y --no-install-recommends \
  libxcursor-dev \
  libxinerama-dev \
  libxrandr-dev \
  libxi6 \
  libgl1 \
  libfontconfig

COPY entrypoint.sh /entrypoint.sh
COPY __rebuilder.gd /__rebuilder.gd
COPY __rebuilder_scene.tscn /__rebuilder_scene.tscn

ENTRYPOINT [ "bash", "/entrypoint.sh" ]
