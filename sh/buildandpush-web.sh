rm -rf /home/gnoss/demo-riojadotnet/src
git clone https://github.com/juanvaler-gnoss/DemoDockerWeb.git "/home/gnoss/demo-riojadotnet/src"

docker build -t docker.gnoss.com/demo-dockerweb:$1 -f /home/gnoss/demo-riojadotnet/src/DemoDockerWeb/Dockerfile --pull=true "/home/gnoss/demo-riojadotnet/src"
docker push docker.gnoss.com/demo-dockerweb:$1