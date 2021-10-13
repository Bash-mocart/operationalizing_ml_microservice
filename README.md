[![CircleCI](https://circleci.com/gh/Bash-mocart/operationalizing_ml_microservice/tree/master.svg?style=svg)](https://circleci.com/gh/Bash-mocart/operationalizing_ml_microservice/tree/master)

## Project Overview

In this project, I applied the skills I have acquired to operationalize a Machine Learning Microservice API. 

I was given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests my ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Tasks

My project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project I did the following:
* Test my project code using linting
* Completed a Dockerfile to containerize this application
* Deployed my containerized application using Docker and make a prediction
* Improved the log statements in the source code for this application
* Configured Kubernetes and created a Kubernetes cluster
* Deployed a container using Kubernetes and make a prediction
* Uploaded a complete Github repo with CircleCI to indicate that my code has been tested

You can find a detailed [project rubric, here](https://review.udacity.com/#!/rubrics/2576/view).

**The final implementation of the project will showcase my abilities to operationalize production microservices.**

**There are three ways to run tests, and lints.**
1. Using the `Make` command from the Make file
2. Using Circle CI
3. Using the `pylint app.py` `hadolint Dockerfile` `python -m pytest -vv --cov=myrepolib tests/*.py` `python -m pytest --nbval notebook.ipynb` directly from the terminal

### Setting up the Makefile
* The Makefile includes instructions on environment setup and lint tests
1. Create a Makefile using the `touch` command.
2. Your Makefile should contains instructions like [I'm an inline-style link](https://github.com/Bash-mocart/operationalizing_ml_microservice/blob/master/Makefile)


### Setting up the Environment (AWS Cloud9)
* After creating your AWS Cloud9 Environment,
1. Create and activate a virtual environment using `make setup`.
2. Run `make install` to install hadolint for the next step and the required dependencies of the project.
3. Run `make lint` (pylint app.py files and hadolint Dockerfile) to detect errors in the code.
* Alternatively running `make all` does all the previous steps at once

### Setting up Circle CI 
   The config.yml file contains instructions that allows circleci to set up a virtual environment, run lints, and run tests using the Make commands from the Makefile.
   You can add more jobs the circle ci will automatically run it for you

**These are two ways of testing and linting.***

### Building and Running Docker Container locally
  Running ./run_docker.sh from the terminal builds and run a docker container manually using configurations from the Docker file after making the run_docker.sh executable using 
  `chmod +x run_docker.sh` 
  To test the docker container, 
  1. Create a new terminal
  2. Make make_predictions.sh executable by running `chmod +x make_predictions.sh`
  3. Run ./make_predictions.sh 
  You should see the prediction output
Tired of running `chmod +x` each time you want to run a shell script?
Simply run `Make exec` to make all .sh files in the project executable.

### Uploading the locally created Docker Container to Docker Hub
Running `./upload_docker.sh` will upload your docker container to Docker Hub.
Alternatives to Docker Hub are Amazon ECR or Github Container Registry

### Creating a Kubernetes Cluster and testing the Microservice 
1. Run ./kubernetes_install.sh to install kubernetes and minikube. It also create kubernetes cluster.
2. Run ./run_kubernetes.sh to run pull the docker container uploaded to Docker Hub to the kubernetes pod. Also forward the container port to the host port to allow http access from 
   our end
3. Run ./make_prediction.sh in a new terminal to test the local running kubernetes cluster. You should see the prediction output.


### Tips
1. Incase you get `low available space on disk` or similar, run the `./resize.sh` to resize the aws cloud9 instance size 
2. When you run the `./run_kubbernetes.sh` you should get an error showing that the port couldnt be forwarded, dont panic, you should wait a couple of minutes for the pod to        finish creating and then run `./run_kubbernetes.sh` again
3. Run `kubectl get pods` to get the list of pods and the pods status
4. You can run app.py via 3 ways 
   a. Standalone:  `python app.py`
   b. Run in Docker:  `./run_docker.sh`
   c. Run in Kubernetes:  `./run_kubernetes.sh`
5. Tired of running `chmod +x` each time you want to run a shell script? Simply run `Make exec` to make all .sh files in the project executable.


### Motivation behind the project
Automation, Less Hassle, Less time to deploy a Microservice.
Circle CI helps with linting and testing the source files for any errors in an automated fashion and reduce human error also increases companys revenue by reducing the time needed to deploy ML microservice to customers. It also helps avoid downtime by running tests to ensure the app's functional part are working properly. 
How everything is done just by running shell scripts also aids and reduce the time needed to configure docker and kubernetes. Imagine running each command from those shell scripts one by one? Headache!







---

