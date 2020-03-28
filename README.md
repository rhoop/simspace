## About
Hey Hoop,

We would like you to implement a packer template that uses the docker builder, and either the ansible, puppet, or shell provisioners to bake a linux container into a generic nginx server.
The packer template should be able to successfully turn either an ubuntu:latest or a centos:latest generic docker container into a working nginx server.

The same packer template should be able to use either operating system depending on a variable passed in from the packer build command line. Furthermore, after a successful build, it should push that docker image to a docker hub account creating either a <yourDockerHubUser>/ubuntu-nginx or <yourDockerHubUser>/centos-nginx container.

both containers need to be able to serve an index.html hello world text document via the following command.

docker run -v /tmp/test_html:/html -p 8888:80 homework/nginx-ubuntu:latest

note: SSL is not required for this homework and should be disabled in your nginx config files.

Please have your code committed to GitHub by Saturday morning.

