#!/bin/bash
sudo docker image rm livebox-exporter:latest sylvainlanglade/livebox-exporter:latest
sudo docker build -t livebox-exporter:latest .
sudo docker tag livebox-exporter:latest sylvainlanglade/livebox-exporter:latest
echo $DOCKERHUB_TOKEN | sudo docker login -u sylvainlanglade --password-stdin
sudo docker push sylvainlanglade/livebox-exporter:latest