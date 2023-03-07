FROM croconut/linux-downloader

RUN sudo apt install libxcursor-dev
RUN sudo apt install libxinerama-dev
RUN sudo apt install libxrandr-dev
RUN sudo apt install libxi6
RUN sudo apt install libgl1

COPY entrypoint.sh /entrypoint.sh
COPY __rebuilder.gd /__rebuilder.gd
COPY __rebuilder_scene.tscn /__rebuilder_scene.tscn

ENTRYPOINT [ "bash", "/entrypoint.sh" ]
