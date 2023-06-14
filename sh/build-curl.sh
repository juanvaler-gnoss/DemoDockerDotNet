rm -rf /home/gnoss/demo-riojadotnet/src
git clone https://github.com/juanvaler-gnoss/DemoDockerDotNet.git "/home/gnoss/demo-riojadotnet/src"

docker build -t demo-dockerdotnet:curlversion -f /home/gnoss/demo-riojadotnet/src/DemoRiojaDotNet/Dockerfile2 --pull=true "/home/gnoss/demo-riojadotnet/src"