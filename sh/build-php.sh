rm -rf /home/gnoss/demo-riojadotnet/src-php
git clone https://github.com/juanvaler-gnoss/DemoDockerPhp.git "/home/gnoss/demo-riojadotnet/src-php"

docker build -t demo-dockerdotnet:phpversion --pull=true "/home/gnoss/demo-riojadotnet/src-php"