minikube start
kubectl apply -f deployment.yml
kubectl apply -f service.yml
kubectl apply -f autoscaling.yml
minikube service helloworld-service
