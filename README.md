## Operationalize a Machine Learning Microservice API
---
[![CircleCI](https://circleci.com/gh/phatnt99/project-ml-microservice-kubernetes.svg?style=svg)](https://circleci.com/gh/phatnt99/project-ml-microservice-kubernetes)
### 1. Project Summary
The target of this project is to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on the data source site. This project tests your ability to operationalize a Python flask app—in a provided file, app.py—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### 2. Instructions
List of commands using for this project:
1. `make lint`
2. `./run_docker.sh`
3. `./make_prediction.sh`
4. `./upload_docker.sh`
5. `minikube start`
6. `kubectl config view`
7. `./run_kubernetes.sh`
8. `minikube delete`

### Explanations
1. `.circleci\config.yml` for CircleCI configuration
2. `app.py` main application
3. `Dockerfile` contains specifications for Docker, describe how the Docker image will be.
4. `Makefile` includes instructions on environment setup and lint tests
5. `make_prediction.sh`simple mockup for testing
6. `run_docker.sh`lists neccessary commands for running the application in Docker
7. `run_kubernetes.sh` lists neccessary commands for running the application in Kubernetes
8. `output_txt_files/docker_out.txt` expected output for docker process
9. `output_txt_files/kubernetes_out.txt` expected output for kubernetes process