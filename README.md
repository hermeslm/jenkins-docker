##This project allow to create an image of Jenkins including Docker

This image is created because we need to build docker images inside a Jenkins container, as part of CI/CD process. Although we can run Docker inside docker using dind, but it’s not a recommended practice due to various risks of data corruption that comes with it( you can read the details about dind in this blog post: http://jpetazzo.github.io/2015/09/03/do-not-use-docker-in-docker-for-ci/)

So I take this idea from this post: https://medium.com/@manav503/how-to-build-docker-images-inside-a-jenkins-container-d59944102f30

