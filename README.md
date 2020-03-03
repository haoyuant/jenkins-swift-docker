# Jenkins-Swift-Docker

This docker file will create a Jenkins image with the swift compiler. Use it to create your Jenkins build server for pure Swift projects🐦🐦🐦

## Get Docker Image
`$ docker pull papikana/jenkins-swift`

## Build Image from Dockerfile
`$ docker build . -t {YOUR_IMAGE_NAME}`

## Run and Mount Container
`$ docker run -p {AGENT_PORT:EXPOSE_PORT} --security-opt seccomp=unconfined -it --mount src={YOUR_LOCAL_FOLDER},target=/.jenkins,type=bind {YOUR_IMAGE_NAME}`

## Example
To use this image, you can either get it from Docker Hub or manually build the Dockerfile.
### Use Docker Image
```
$ docker pull papikana/jenkins-swift
$ docker run -p 80:8080 --security-opt seccomp=unconfined -it --mount src=$PWD/jenkins,target=/.jenkins,type=bind ht/jenkins-swift
```
### Use Dockerfile
```
$ cd jenkins-swift-docker
$ docker build . -t ht/jenkins-swift
$ docker run -p 80:8080 --security-opt seccomp=unconfined -it --mount src=$PWD/jenkins,target=/.jenkins,type=bind ht/jenkins-swift
```
Then open the browser and visit `localhost` and start using Jenkins for Swift.
