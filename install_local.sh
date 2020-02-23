printf "##### Building project database image..."
docker build -t iocom-neo4j ./neo4j
printf "##### Building project base image..."
docker build -t iocom-nodejs ./nodejs
printf "###Build Done!"

cd ..

printf "\n\n#####  Cloning Platform..."

git clone git@gitlab.com:iocom-platform/iocom-web.git

git clone git@gitlab.com:iocom-platform/iocom-api.git

#git clone git@iocom:iocom-platform/iocom-web.git
#
#git clone git@iocom:iocom-platform/iocom-api.git

printf "\n\n##### Copying composer..."
cp iocom/docker-compose-local.yml.sample docker-compose.yml
cd io
rm proxy.conf

echo "### Creating proxy.conf"
cat > proxy.conf <<EOL
server_tokens off;
client_max_body_size 200m;
EOL
echo " "

echo "
As last step you need to manually edit /etc/hosts
in your PC (Mac and linux)

 127.0.0.1  adm.local.iocom.com
 127.0.0.1  api.local.iocom.com
 127.0.0.1  neo4j.local.iocom.com
"

cd iocom

printf "\n\nAll done! Have a nice day!\n"
