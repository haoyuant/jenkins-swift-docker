# Jenkins-Swift-Docker

This docker file will create an 

## Build Image
`$ docker build . -t ht/jenkins-swift`

## Run and Mount Container
`$ docker run -p 80:8080 --security-opt seccomp=unconfined -it --mount src=$PWD/jenkins,target=/.jenkins,type=bind ht/jenkins-swift`
