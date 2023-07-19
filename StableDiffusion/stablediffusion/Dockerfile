FROM python:3.10.6

RUN apt-get update
RUN apt-get install libgoogle-perftools4 libtcmalloc-minimal4 libgl1-mesa-glx -y
RUN apt install wget git python3 python3-venv vim -y

RUN useradd -ms /bin/bash sd
USER sd
WORKDIR /home/sd


RUN git clone https://github.com/AUTOMATIC1111/stable-diffusion-webui

# ENV CUDA_VISIBLE_DEVICES=-1
# ENV COMMANDLINE_ARGS="--xformers --use-cpu all --no-half --skip-torch-cuda-test --enable-insecure-extension-access  --skip-torch-cuda-test --server-name 0.0.0.0"
# ENV TORCH_COMMAND="pip install torch torchvision"
ARG LAUNCH_SCRIPT="--version"
ENV COMMANDLINE_ARGS="--share --listen"
# RUN bash <(wget -qO- https://raw.githubusercontent.com/AUTOMATIC1111/stable-diffusion-webui/master/webui.sh)
WORKDIR stable-diffusion-webui

RUN pip install clip open_clip_torch
RUN pip install torch torchvision gfpgan

RUN python -m venv venv
SHELL ["/bin/bash", "-c"]
RUN source venv/bin/activate
RUN pip install -r requirements.txt

# RUN echo hello && ./webui.sh
# ENV LAUNCH_SCRIPT=
# COPY launch.py install.py
# RUN python3 install.py

# COPY index.html /home/sd

EXPOSE 7860
# USER root
CMD tail -f /dev/null
