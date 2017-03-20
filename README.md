# spark-docker-simple
A simple docker image to deploy a spark 2.1.0 cluster

### Building the image
docker build spark210 .

### Running the cluster
docker-compose up

### Setting the number of workers
docker-compose scale spark-worker=numWorkers


Once running, the cluster spark UI is accessible with `localhost:8080`
