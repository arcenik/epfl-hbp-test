
## Running the container

1. docker-compose up
2. http://localhost:8000/ # you may need to Initialize the data

## Running on host deployed with docker-machine

1. docker-machine create --driver virtualbox hbpdocker
2. eval $(docker-machine env hbpdocker)
3. docker-machine scp -r ./data hbpdocker:.
4. docker-compose up
5. docker-machine ls   # get the IP address
6. http://192.168.1.56:8000/ # you may need to Initialize the data

## Initialize and load the data

1. docker exec -ti django bash -l
2. make build
3. make load_data
4. exit
