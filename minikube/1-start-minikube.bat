SET PROFILE_NAME=kubernetescookbook
SET MEMORY=16384
SET CPUS=4
SET DISK=50g

SET EXTRA_CONFIG="apiserver.enable-admission-plugins=LimitRanger,NamespaceExists,NamespaceLifecycle,ResourceQuota,ServiceAccount,DefaultStorageClass,MutatingAdmissionWebhook"

REM minikube start --memory=16384 --cpus=4 --disk-size=50g --extra-config="apiserver.enable-admission-plugins=LimitRanger,NamespaceExists,NamespaceLifecycle,ResourceQuota,ServiceAccount,DefaultStorageClass,MutatingAdmissionWebhook" --insecure-registry='10.0.0.0/24' 
minikube start -p %PROFILE_NAME% --memory=%MEMORY% --cpus=%CPUS% --disk-size=%DISK% --extra-config=%EXTRA_CONFIG% --insecure-registry='10.0.0.0/24' 
minikube profile %PROFILE_NAME%
minikube addons enable registry
REM To push to this registry:
REM 1. command window 1:
REM   @FOR /f "tokens=*" %i IN ('minikube -p %PROFILE_NAME% docker-env') DO @%i
REM   docker run --rm -it --network=host alpine ash -c "apk add socat && socat TCP-LISTEN:32769,reuseaddr,fork TCP:host.docker.internal:32769"
REM 2. command window 2:
REM    docker tag helloworld/nodejs:1.0 localhost:32769/helloworld/nodejs:1.0
REM    docker push localhost:32769/helloworld/nodejs:1.0
REM    curl http://localhost:32769/v2/_catalog

REM point your shell to minikube's docker-daemon
@FOR /f "tokens=*" %%i IN ('minikube -p %PROFILE_NAME% docker-env') DO @%%i
docker images --format {{.Repository}}

REM create namespaces and set current name space
kubectl create namespace dev
kubens set dev