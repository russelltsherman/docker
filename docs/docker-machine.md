# docker-machine

launch docker virtual machine using virtualbox driver

```sh
docker-machine create --driver virtualbox default
```

export docker connection vars to terminal session

```sh
eval $(docker-machine env default)  
```

run docker hello-world container

```sh
docker run hello-world   
```