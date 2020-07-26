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
- then execute: bash myCIscript.sh and all the configuration and deployment should happen automatically
- share the code/configurations/scripts with us - for example via a github.com repository
- present your journey and the outcome next week

## Minikube Setup
1. Find Intallation Instruction online
2. Requirements 
  - Docker - check
  - Choclatey - easy to install - check
  - Hyper V - Problem: not availabe on Win10 Home - Solution: work around with Hyper V installer - check
  - Config Hyper V to have a workable virutell switch for minikube to connect - Problem: WLAN is not used; connection is done with virtuell switch, thus no internet - Solution: workaround with network bypass (loopback) - check
  - Install minikube - required multiple attenpts - do not forget to deinstall proberly and to delete .minikube folder in user directory - check
  - configure secret docker-registry, not everything should be public - check
  - build docker image does not work, because it is not configured to work with hyper v, instead it came with virtualbox
  - deinstall docker toolbox
  - try to install docker desktop app... remember that it did not work the first time around, because the Win10 home version is too old
  - get a little fustrated, discuss problem with person I live together. Get his PC that has Win10 Pro and better computational power

Solution: use better computer and use combined docker with kubetnetes installation.

## Run HelloWorld with new SetUp to verify functionality


