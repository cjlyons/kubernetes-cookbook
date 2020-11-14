kubectl apply -f ..\apps\reverseProxy\k8s-app.yml
kubectl apply -f ..\apps\tic-tac-toe\k8s-app.yml
kubectl apply -f ..\apps\hello-world\node\k8s-app.yml
kubectl apply -f ..\apps\hello-world\flask\k8s-app.yml
kubectl apply -f ..\apps\hello-world\springboot\k8s-app.yml
watch kubectl get pods
