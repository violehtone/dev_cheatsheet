#############
# Terminology
#############
Basic terminology:
* image = blueprint of the app which forms the basis of containers (~ like a git repository)
      - images can have commits
      - images can have multiple versions
* container = created from image and run the actual app
* docker daemon = background service running on host that manages building, running, and distributing docker containers
* docker client = command line tool that allows the user to interact with the daemon
* docker hub = registry of docker images that can be pulled
* Dockerfile = simple text file that contains a list of commands that the Docker client calls while creating an image

Open source tools for Docker:
  * Docker machine = create docker hosts on your computer
  * Docker compose = a tool for defining and running multi-container Docker applications
  * Docker Swarm = native clustering solution for Docker
  * Kubernetes = system for automating deployment, scaling, and management of containerized apps

#########################
# Most important commands
#########################
docker images # show all docker images
docker pull <image_name> # pull a docker image
docker ps # show all running containers
docker run <image_name> # run a docker image
docker stop <image_name> # stop running a docker image


#####################
# Fetch docker images
#####################
sudo docker pull <image_name> # fetch image from Docker registry
sudo docker search <image_name> # search for images

###################
# Run docker images
###################
sudo docker run <image_name> # run a docker container based on image
sudo docker run -it <image_name> # run docker commands inside the container
sudo docker run --help # get list of all flags allowed with the run command
sudo docker run <image_name> --rm # run docker container and automatically delete it once exited
sudo docker run -p <port> <image_name> # run image on a specific port (i.e. 8888:80)

# Flags for docker run
-d      # detach terminal from container
-P      # publish all exposed ports to random ports
--name  # corresponds to a name to give for container
-p      # specify a port in which the container is run

###################
# Stop docker image
###################
docker stop <image_name> # stop a specific image
docker stop $(docker ps -aq) # stop all images(?)

###############################
# List all containers / images
###############################
sudo docker ps # list all containers that are currently running
sudo docker ps -a # show list of all containers ran (with container IDs)
docker port <container_name> # see port where container is running
docker images # list of images that are locally available
docker image ls # list docker images
docker container logs <container_name/id> # inspect container logs
docker container ls # list all docker containers (same as docke rps)
docker network ls # list docker networks

#############################
# Delete containers / images
#############################
sudo docker rm <container_id> # delete a container
sudo docker rm $(docker ps -a -q -f status=exited) # Delete all containers that have status = exited
docker rmi $(docker images -q) # remove all docker images
docker rm $(docker ps -a -q) # remove all docker containers


##############################
# Creating a new docker image
##############################
# 1) Clone a git repository
git clone <repository_url.git>
cd <git_repo_folder_name>

# 2) Create a Dockerfile
nano Dockerfile # see the Dockerfile for what content to include

# 3) Build the image
docker build -t <docker_username>/<image_name> .

# 4) Run the image
docker run -p 8888:5000 <docker_username>/<image_name>

##################################################
# Docker compose (for multi-container Docker apps)
##################################################
pip install docker-compose #install docker compose
docker-compose --version # check version

# Creating a docker-compose file
docker-compose.yml # -> see example file

# Running docker compose
docker-compose up -d # run cluster (multiple docker containers)
docker-compose ps # list containers
docker-compose down -v # stop cluster (containers)