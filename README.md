############################

Create a hello world service (in whatever language you feel comfortable) in a git repository
together with a CI/CD pipeline that performs unit tests, creates a container, pushes the image to
a repository (e.g. Docker Hub) and deploys to an online server.

############################

The project contains a simple Python Flask Hello World Service with some unit tests that deploys into a server. 

Prerequisites - Circle CI account / Any Online server (Linux) / Docker Hub account

**Project Description:**
File Structure:

<img width="202" alt="image" src="https://user-images.githubusercontent.com/90499266/133021258-34005a41-62eb-480b-8c83-6275e6065941.png">



File: hello_world.py

Sample service which displays a Hello World Image with a message name Hello World! for unit Test.

File: test_hello_world.py

Unit test file that contains the test cases -
  * Import python unittest framework(https://docs.python.org/2/library/unittest.html).
  * Check 1 : receives a status 200 ok for the image file.
  * Check 2 : checks the value of message is equals to "Hello World!".

File: Dockerfile

Docker file to deploy the Flask app with its requirements(installations to verify before deployment)

File: requirements.txt

Contains prerequisites needed in docker container before deployment of service.

File: deploy_app.sh

App deployment script

File: reset_app.sh

Script to remove and Stop the service

File: .circleci/config.yml

This is the config file created to run the build job and deploy into a public server.
