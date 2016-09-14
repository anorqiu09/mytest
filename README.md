Overview

This is just a demonstration how to dockerize a web application which runs over Apache httpd web server. 

How to build

	docker build --rm -t SZ-G8M4X72.morningstar.com:6000/mywebapp .

The command above will build a docker image based SZ-G8M4X72.morningstar.com:6000/centos:6.6, and also get httpd and mywebapp installed.

How to Run
	
 	docker run --name mywebapp -p 80:80 -d SZ-G8M4X72.morningstar.com:6000/mywebapp

The comand above will run the docker image as a container instance with name mywebapp, and also expose the tcp port 80 to its host.
 
How to Test

In a browser, visit the following link,

	http://<docker host IP>/hello.html

	


