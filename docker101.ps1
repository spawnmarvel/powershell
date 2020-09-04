# Stop Containers
# First, list all Docker containers using the command:
docker container ls -a
#You can also generates a list of all the containers only by their numeric ID’s, run the command:
docker container ls –aq 
# To stop a specific container, enter the following:
docker container stop [container_id]
# To stop all containers, enter:
docker container stop $(docker container ls –aq)


# use case stop and remove container
docker container stop 0dace2627164
docker container rm 0dace2627164

# use case remove image
# To remove a Docker image, start by listing all the images on your system:
docker image ls
# Then, remove the unwanted image(s):
# docker image rm [image_id1] [image_id2]
docker image rm 5726af297dd4

#remove all images
docker rmi $(docker images -a -q)

# RABBITMQ
# https://medium.com/dev-genius/rabbitmq-with-docker-on-windows-in-30-minutes-172e88bb0808
docker run -d -p 15672:15672 -p 5672:5672 --name rabbit_test rabbitmq:3-management
# stop it
docker stop rabbit-test
# start it
docker start rabbit_test
 
