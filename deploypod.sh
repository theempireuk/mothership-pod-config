sudo docker stop mothership-pod
sudo docker prune -f
sudo docker pull theempire/mothership-pod:latest
sudo docker system prune -f
docker run --env-file ./env.list --rm -it -d --name mothership-pod -p 3000:3000 -v /var/run/docker.sock:/var/run/docker.sock -v /home/ubuntu/mothership-pod-config/env.list:/home/ubuntu/mothership-pod-config/env.list -v $PWD:$PWD theempire/mothership-pod
