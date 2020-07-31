sudo docker stop mothership-pod
sudo docker prune -f
sudo docker pull theempire/mothership-pod:latest
sudo docker system prune -f
sudo docker run --env-file ./env.list -d --rm --name mothership-pod -p 3000:3000 -v /var/run/docker.sock:/var/run/docker.sock -v /home/ubuntu/mothership-pod/env.list:/home/ubuntu/mothership-pod/env.list theempire/mothership-pod
