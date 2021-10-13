[![CircleCI](https://circleci.com/gh/Bash-mocart/operationalizing_ml_microservice/tree/master.svg?style=svg)](https://circleci.com/gh/Bash-mocart/operationalizing_ml_microservice/tree/master)

## Project Overview


Operationalizing ML Microservice that predicts housing prices in Boston according to several features. 

Summary:

Setup the Environment

* Create a virtualenv and activate it
* Run `make install` to install the necessary dependencies

Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl


Overview of the scripts used
1. .circleci contains the configurations for circle ci
2. model data contains the data in which the model was trained on
3. app.py is the ML application that was containerized as a microservice 
4. DockerFile configures the docker container
5. kubernetes_install.sh installs kubernetes, minikube and conntrack
6. Makefile.sh contains list of commands for linting and tests
7. requirements.txt contains lists of dependencies required by the ML app
8. resize.sh resizes EBS to have docker container built locally on Amazon EC2
9. run_docker.sh runs the locally build docker container
10. run_kubernetes.sh runs kubernetes locally
11. upload_docker.sh uploads docker to dockerhub


3 ways to test, lint the source code
1. Using the MakeFile
2. Using CircleCI
3. Using the test and lints commands directly within the terminal




In this project, you will apply the skills you have acquired in this course to operationalize a Machine Learning Microservice API. 

You are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Tasks

Your project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project you will:
* Test your project code using linting
* Complete a Dockerfile to containerize this application
* Deploy your containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that your code has been tested

You can find a detailed [project rubric, here](https://review.udacity.com/#!/rubrics/2576/view).

**The final implementation of the project will showcase your abilities to operationalize production microservices.**

---

