printf "##### Building project database image..."
docker build -t iocom-neo4j ./neo4j
printf "##### Building project database image..."
docker build -t iocom-mariadb ./mariadb
printf "##### Building project base image..."
docker build -t iocom-nodejs ./nodejs
printf "###Build Done!"

cd ..

printf "\n\n#####  Cloning Platform..."
git clone git@gitlab.com:iocom-platform/iocom-web.git

git clone git@gitlab.com:iocom-platform/iocom-api.git

printf "\n\n##### Copying composer..."
#cp iocom/docker-compose.yml.sample docker-compose.yml

rm proxy.conf

echo "### Creating proxy.conf"
cat > proxy.conf <<EOL
server_tokens off;
client_max_body_size 200m;
EOL
echo " "



cd iocom

printf "\n\nAll done! Have a nice day!\n"