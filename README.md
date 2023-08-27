417  docker run --name csvserver2 -v "$(pwd)/inputFile:/root/csvserver/solution/inputFile" infracloudio/csvserver:latest
  418  docker run --name csvserver3 -v "$(pwd)/inputFile:/root/csvserver/solution/inputFile" infracloudio/csvserver:latest
  419  docker rm $(docker ps -a)
  420  ./gencsv.sh 2 8
  421  docker run -d --name csvserver infracloudio/csvserver:latest
  422  docker logs csvserver
  423  docker cp inputFile csvserver:/csvserver/inputdata
  424  dokcer stop csvserver
  425  docker stop csvserver
  426  docker rm csvserver
  427  docker run --name csvserver -v "$(pwd)/inputFile:/csvserver/inputdata" infracloudio/csvserver:latest
  428  docker run ---d name csvserver -v "$(pwd)/inputFile:/csvserver/inputdata" infracloudio/csvserver:latest
  429  docker run -d --name csvserver -v "$(pwd)/inputFile:/csvserver/inputdata" infracloudio/csvserver:latest
  430  docker rm csvserver
  431  docker run -d --name csvserver -v "$(pwd)/inputFile:/csvserver/inputdata" infracloudio/csvserver:latest
  432  docker ps -a
  433  docker exec -it csvserver sh
  434  docker stop csvserver
  435  docker run -d --name csvserver -v "$(pwd)/inputFile:/csvserver/inputFile" -e CSVSERVER_BORDER=Orange -p 9393:9300 infracloudio/csvserver:latest
  436  docker rm csvserver
  437  docker run -d --name csvserver -v "$(pwd)/inputFile:/csvserver/inputdata" -e CSVSERVER_BORDER=Orange -p 9393:9300 infracloudio/csvserver:latest
  438  docker ps -a
  439  ip r l
  440  touch README.md

