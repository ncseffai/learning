red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`

echo 
echo "${green}stopping container${reset}"
docker container stop rp
echo "${green}removing container${reset}"
docker container rm rp
echo "${green}rebuilding docker image${reset}"
docker image build -t reverseproxy .
echo "${green}starting container${reset}"
docker container run -d --name rp -p 5000:80 reverseproxy
docker container ls