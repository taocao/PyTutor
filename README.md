# PyTutor

This repository is copies from the [OnlinePythonTutor](https://github.com/pgbovine/OnlinePythonTutor) project.

The author is [Philip Guo](https://pg.ucsd.edu/). And the official website is <https://pythontutor.com/>.

I just add a dockerfile, that you can deploy the pytutor in a container.

You can visit my demo here: [PyTutor](http://pytutor.seamile.cn/visualize.html).

## Usage

```shell
git pull https://github.com/seamile/PyTutor.git
cd PyTutor
#command builds a Docker image from a Dockerfile in the current directory and tags the image as pytutor:latest
docker build -t pytutor:latest .
#This image can then be run as a container using docker run
docker run -d -p 8003:8003 pytutor
```

Access the instance on [http://localhost:8003/visualize.html](http://localhost:8003/visualize.html)

# PyTutor Docker Image

This repository contains the Docker configuration for the PyTutor application, which is built using the Bottle framework. The Docker image includes all necessary dependencies and is set up to run the Bottle server.

## Prerequisites

- Docker installed on your machine
- Docker Hub account (for pushing the image)

## Building the Docker Image

To build the Docker image, navigate to the directory containing your `Dockerfile` and run the following command:

```sh
docker build -t pytutor:1.0 .
```
This command will create a Docker image tagged as pytutor:1.0.



