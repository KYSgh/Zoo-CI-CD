cd /home/ec2-user/
mkdir -p webb
mv ./app/my-zootopic-front-main /home/ec2-user/webb
mv ./app/reactDockerfile /home/ec2-user/webb
cd /home/ec2-user/webb
sudo docker build -t reacts-webb .
sudo docker run -d -p 3000:3000 reacts-webb
