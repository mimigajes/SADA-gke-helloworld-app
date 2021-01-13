#!/bin/bash
wget https://get.helm.sh/helm-v3.0.1-linux-amd64.tar.gz
tar -zxvf helm-v3.0.1-linux-amd64.tar.gz
sudo mv linux-amd64/helm /usr/local/bin/helm3
gcloud container clusters create gke-hello-world --project "strange-mariner-290720" --zone "us-central1-b" --cluster-version "1.15.16-gke.4600" --machine-type "n1-standard-1" --num-nodes "2" --enable-autoscaling --min-nodes "2" --max-nodes "3"
gcloud container clusters get-credentials gke-hello-world --zone us-central1-b --project strange-mariner-290720
kubectl create ns nginx
helm install nginx stable/nginx-ingress --namespace nginx --set rbac.create=true --set controller.publishService.enabled=true
kubectl get svc -n nginx
kubectl create deployment hello-app --image=gcr.io/google-samples/hello-app:1.0
kubectl expose deployment hello-app --port 8080 --target-port 8080
kubectl apply -f ingress.yaml
