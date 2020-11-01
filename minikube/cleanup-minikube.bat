REM clean up everything that might already exist, run as admin for net cmds
minikube stop
minikube delete
docker system prune -a -f

REM restart docker
net stop com.docker.service
taskkill /IM "Docker Desktop.exe" /F
net start com.docker.service
start "" "c:\program files\docker\docker\Docker Desktop.exe"
sleep 90
