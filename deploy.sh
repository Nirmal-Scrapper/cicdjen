# docker stop $(docker ps -q -a)
# docker rm $(docker ps -q -a)
sudo aws ecr-public get-login-password --region us-east-1 | sudo docker login --username AWS --password-stdin public.ecr.aws/p3t0m4x7
sudo docker pull public.ecr.aws/p3t0m4x7/dock_task_mysql:latest
sudo docker tag  public.ecr.aws/p3t0m4x7/dock_task_mysql:latest mysq
sudo aws ecr get-login-password --region us-east-1 | sudo docker login --username AWS --password-stdin 877969058937.dkr.ecr.us-east-1.amazonaws.com
sudo docker pull 877969058937.dkr.ecr.us-east-1.amazonaws.com/nirmal_nod:latest
sudo docker tag  877969058937.dkr.ecr.us-east-1.amazonaws.com/nirmal_nod:latest nod
docker swarm init
docker-compose up -d