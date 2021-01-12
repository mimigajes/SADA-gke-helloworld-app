# SADA-gke-helloworld-app

Homework Part 1: Google Kubernetes Engine
In this assignment we focus on exploring Google's managed Kubernetes offering.

Requirements
Description
Success criteria
Artifacts to be provided
Bonus points
Requirements
A Linux/OSX environment
Running windows? Spin up a virtual machine with VirtualBox. CentOS or Ubuntu are easy enough and will get the job done.
A free GCP account
Description
Acquire a Google account. Google Cloud has a free trial where they provide you with $300 in credits for a year. Use these credits to:

Spin up a Kubernetes cluster in GKE with two-three nodes
Write a Kubernetes deployment definition in YAML that includes:
an Nginx web server with a single hello-world webpage
Write a Kubernetes service definition in YAML that exposes the deployment with a Load Balancer
Write a Kubernetes ingress definition to allow the service to be reached from the world
Success criteria
The webpage can be displayed over the internet: there is an endpoint I can see the page on.

Artifacts to be provided
Resulting publicly accessible URL
Kubernetes Deployment, Service, Ingress YAMLs
nginx configuration
Bonus points
Force HTTPS redirection with Nginx (using HTTP 301)
Configure DNS to the endpoint
Ensure certificate validity for the endpoint
Define all infrastructure using IaC - Infrastructure as Code, such as Terraform or Deployment Manager
Define all Kubernetes objects using a templating engine of choice (e.g., Helm or Kustomize)
