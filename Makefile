minikube-start:
	minikube start

build-image:
	eval $(minikube docker-env)
	docker image rm --force boskey/helloworld
	docker build -t boskey/helloworld .

deploy:
	kubectl apply -f deployment.yml
	kubectl apply -f service.yml
	kubectl apply -f autoscaling.yml

remove-deploy:
	kubectl delete hpa helloworld-hpa
	kubectl delete deployment helloworld-deployment
	kubectl delete service helloworld-service

get-service:
	minikube service helloworld-service
