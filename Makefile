WS_CLIENT_IMAGE="ringtail/ws-client:0.1"
WS_SERVER_IMAGE="ringtail/ws-server:0.1"

.PHONY: docker-build

docker-build: docker-build-ws-server docker-build-ws-client

docker-build-ws-server:
	docker build -t ${WS_SERVER_IMAGE} -f websocket-server/Dockerfile websocket-server/

docker-build-ws-client: 
	docker build -t ${WS_CLIENT_IMAGE} -f websocket-client/Dockerfile websocket-client/

docker-push: docker-push-ws-server docker-push-ws-client

docker-push-ws-server:
	docker push ${WS_SERVER_IMAGE}

docker-push-ws-client:
	docker push ${WS_CLIENT_IMAGE}	
