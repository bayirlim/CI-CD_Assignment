# CI-CD_Assignment
Assignment for CI/CD Squad

## Assignment description
Pick some opensource project from github, and deploy it to a kubernetes cluster (use minikube).
But please note that it shouldn't be deployed manually!
Hints:
- assume you have an empty kubernetes cluster in minikube
- Script should be infrastructure independent. Assume that infrastructure already persists and kubectl is configured to work with some k8s cluster
- You cannot use an already existing image but should compile the project from source code
- put all the deployment and other required kubernetes configuration into files
- assume you authenticate upfront in your command window
- then execute: `bash myCIscript.sh` and all the configuration and deployment should happen automatically
- share the code/configurations/scripts with us - for example via a github.com repository
- present your journey and the outcome next week

## Minikube Setup
1. Find installation Instruction online
2. Requirements
  - Docker - check
  - Choclatey - easy to install - check
  - Hyper V - Problem: not available on Win10 Home - Solution: work around with Hyper V installer - check
  - Config Hyper V to have a workable virtual switch for Minikube to connect - Problem: WLAN is blocked by virtual switch; connection is occupied by virtual switch, thus no internet - Solution: workaround with network bypass (loopback) - check
  - Install Minikube - required multiple attempts - do not forget to uninstall properly and to delete .minikube folder in user directory - check
  - configure secret docker-registry, not everything should be public - check; important for confidential images
  - building docker image does not work, because it is not configured to work with hyper v, instead it came with VirtualBox
  - Minikube works but can not build docker images
  - uninstall docker toolbox
  - try to install docker desktop app... remember that it did not work the first time around, because the Win10 home version is too old
  - get a little frustrated, discuss problem with person I live together. Get his PC that has Win10 Pro and better computational power

Solution: use better computer and use combined docker with Kubernetes installation.

## Run HelloWorld with new SetUp to verify functionality
Instead of using Minikube use Kubernetes that comes along with Docker Desktop App on Win10 Pro.
Similar to Minikube, it is a single node cluster.

  - run hello world "manually" with bash commands to build, push, deploy and expose
  - now, that you have a feeling on how it is done figure out to do it automatically
  - use bash file (`myCIscript.sh`) to execute und deploy
  - put all the needed configuration for the deployment and service (expose) in a deployment file
  - run and evaluate the configuration and automation
  - now that everything works, clean it up

## Select open source project
  - should be simple and easy to review
  - chose https://github.com/vyahello/js-web-clock
  - apply everything learned form helloworld project
  - adjust Dockerfile, Kubernetes deployment file - yaml
  - helloworld Dockerfile is a node.js application, whereas the project is a html, java script and css based webpage provided by nginx
  - in bash file only the variable names have to be adjusted
  - improve continuous integration by always pulling the latest image; done by restarting the pods
  - now changes of the clock can be seen without deleting and rebuilding everything
  - can be shown with changing background color to IBMs color #1f70c1
  - do not to clean up afterwards
