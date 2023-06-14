rm -rf /home/gnoss/demo-riojadotnet/src
git clone https://github.com/juanvaler-gnoss/DemoDockerDotNet.git "/home/gnoss/demo-riojadotnet/src"

docker build -t demo-dockerdotnet -f /home/gnoss/demo-riojadotnet/src/DemoRiojaDotNet/Dockerfile1 --pull=true "/home/gnoss/demo-riojadotnet/src"