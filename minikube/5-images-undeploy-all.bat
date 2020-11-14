kubectl delete -f ..\apps\reverseProxy\k8s-app.yml
kubectl delete -f ..\apps\tic-tac-toe\k8s-app.yml
kubectl delete -f ..\apps\hello-world\node\k8s-app.yml
kubectl delete -f ..\apps\hello-world\flask\k8s-app.yml
kubectl delete -f ..\apps\hello-world\springboot\k8s-app.yml
watch kubectl get pods
