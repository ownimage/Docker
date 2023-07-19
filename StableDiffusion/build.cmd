set BUILDKIT_PROGRESS=plain
@REM cd proxy && docker build --no-cache . -t ownimage-stablediffusion-proxy:latest && cd ..
cd stablediffusion && docker build . -t ownimage-stablediffusion:latest && cd ..
