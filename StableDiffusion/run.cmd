docker compose down
docker-compose up -d
pause
docker-compose exec sd bash
@REM docker run -it -p 0.0.0.0:7860:7860 --name ownimage-stablediffusion2 --rm --gpus all --network host ownimage-stablediffusion:latest bash
