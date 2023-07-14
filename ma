pract 1 build console app?cmd
dotnet --version
dotnet new console -o myApp
cd myApp
dotnet run

pract 2 build mvc app?cmd
dotnet new mvc --auth none
dotnet run o/p(hello world)
dotnet run o/p(hello $3200)

pract 3a pull img?docker
docker -–version
docker pull rocker/verse
docker images

pract 3b push img?docker
docker login –username=jjagruti
0/p(Shreeganesh@288)
docker tag (img id) jjagruti/repoo1:lab
docker push jjagruti/repoo1:labb

Method 2:
Build an image then push it to docker and run it
Command : to create docker file
1. cat > Dockerfile <<EOF
2. FROM busybox
3. CMD echo "Hello world! This is my first Docker image."
4. EOF
dokcer build –t jjagruti/repoo2 . 
docker images
docker push jjagruti/repoo2
docker run jjagruti/repoo2

pract 4 docker desk(#run(administra cmd)?
docker run -p 8080:8080 dotnetcoreservices/hello-world 
Run Localhost  in browser
docker ps  
curl http://localhost:8080/will/it/blend? 
docker kill (container ID)
docker ps 

#run(administra powershell)?
docker -v
docker run hello-world
docker image ls
docker container ls--all
docker --help
docker container --help
docker container ls --help
docker container ls --all

pract 5( rest api glossary)?
cmd1=dotnet new webapi -o Glossary
cd Glossary
dotnet run
cmd2=curl --insecure https://localhost:5001/weatherforecast
cmd1=dotnet run
cmd2=curl --insecure https://localhost:5001/api/glossary

curl --insecure https://localhost:5001/api/glossary/MVC

curl --insecure -X POST -d "{\"term\": \"MFA\", \"definition\":\"An authentication process.\"}" -H "Content-Type:application/json" https://localhost:5001/api/glossary

curl --insecure -X PUT -d "{\"term\": \"MVC\", \"definition\":\"Modified record of Model View Controller.\"}" -H "Content-Type:application/json" https://localhost:5001/api/glossary

curl --insecure --request DELETE --url https://localhost:5001/api/glossary/openid

pract 7.1(run loc seriv)cmd
cmd1=dotnet run --server.urls http://*:5001
cmd2=dotnet run
cmd3=curl -H "Content-Type:application/json" -X POST -d "{\"id\":\"e52baa63-d511-417e-9e54-7aab04286281\",\"name\":\"KC\"}" http://localhost:5000/teams

curl -H "Content-Type:application/json" -X POST -d "{\"id\":\"63e7acf8-8fae-42ce-9349-3c8593ac8292\",\"firstName\":\"Kirti\", \"lastName\":\"Bhatt\"}" http://localhost:5000/teams/e52baa63-d511-417e-9e54-
7aab04286281/members

curl -H "Content-Type:application/json" -X POST -d "{\"id\":\"64c3e69f-1580-4b2f-a9ff-2c5f3b8f0e1f\",\"latitude\":12.0,\"longitude\":12.0,\"altitude\":10.0, \"timestamp\":0,\"memberId\":\"63e7acf8-8fae-42ce-9349-
3c8593ac8292\"}" http://localhost:5001/locations/63e7acf8-8fae-42ce-9349-3c8593ac8292

curl http://localhost:5000/teams/e52baa63-d511-417e-9e54-7aab04286281/members/63e7acf8-8fae-42ce-9349-3c8593ac8292

pract 7.2(docker)
1)docker run -d -p 5000:5000 -e PORT=5000 \
2)-e LOCATION__URL=http://localhost:5001 \
3)dotnetcoreservices/teamservice:location
4)docker run -d -p 5001:5001 -e PORT=5001 \
5)dotnetcoreservices/locationservice:nodb
6)docker images
7)curl -H "Content-Type:application/json" -X POST -d \
8)'{"id":"e52baa63-d511-417e-9e54-7aab04286281", "name":"KC"}' http://localhost:5000/teams
9)curl http://localhost:5000/teams/e52baa63-d511-417e-9e54-7aab04286281
10)curl -H "Content-Type:application/json" -X POST -d \
'{"id":"63e7acf8-8fae-42ce-9349-3c8593ac8292", "firstName":"Kirti", "lastName":"Bhatt"}' http://localhost:5000/teams/e52baa63-d511-417e-9e54-7aab04286281/members
11)curl http://localhost:5000/teams/e52baa63-d511-417e-9e54-7aab04286281
12)curl -H "Content-Type:application/json" -X POST -d \
'{"id":"64c3e69f-1580-4b2f-a9ff-2c5f3b8f0e1f", "latitude":12.0,"longitude":12.0,"altitude":10.0, "timestamp":0,"memberId":"63e7acf8-8fae-42ce-9349-3c8593ac8292"}' http://localhost:5001/locations/63e7acf8-8fae-42ce-9349-3c8593ac8292
13)curl http://localhost:5001/locations/63e7acf8-8fae-42ce-9349-3c8593ac8292

pract 10(dock vol ntw play withdoc)
1)docker pull nginx
2)docker run -it --name=webApp -d -p 80:80 nginx
3)docker exec -it webApp bash
4)cd /usr/share/nginx/html
5)echo "Hello KB" > index.html
6)Exit
7)Docker ps
8)docker stop webApp
9)docker run -it --name=webApp1 -d -p 80:80 nginx
10)docker volume create MyVolume
11)docker volume ls
12)docker volume inspect MyVolume
13)docker run -d --name=webApp4 --mount source=MyVolume,destination=/usr/share/nginx/html -p 50:80 nginx
14)ls /
15)cd /var/lib/docker
16)ls
17)cd volumes
18)ls
19)cd MyVolume
20)ls
21)cd _data
22)ls
23)echo “from MyVolume hello KB” > index.html
24)docker stop webApp4
25)docker run -d --name=webApp6 --mount source=MyVolume,destination=/usr/share/nginx/html -p 5000:80 nginx
