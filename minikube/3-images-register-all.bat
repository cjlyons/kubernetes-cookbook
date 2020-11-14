docker tag reverseproxy/nginx:1.0 localhost:32769/reverseproxy/nginx:1.0
docker push localhost:32769/reverseproxy/nginx:1.0
docker tag tictactoe/react:1.0 localhost:32769/tictactoe/react:1.0
docker push localhost:32769/tictactoe/react:1.0
docker tag helloworld/nodejs:1.0 localhost:32769/helloworld/nodejs:1.0
docker push localhost:32769/helloworld/nodejs:1.0
docker tag helloworld/flask:1.0 localhost:32769/helloworld/flask:1.0
docker push localhost:32769/helloworld/flask:1.0
docker tag helloworld/spring:1.0 localhost:32769/helloworld/spring:1.0
docker push localhost:32769/helloworld/spring:1.0
curl http://localhost:32769/v2/_catalog
