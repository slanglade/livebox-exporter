#!/bin/bash
echo "Download dependencies"
go mod download

echo "Build livebox-exporter"
go build -o ./target/livebox-exporter

echo "Deploy livebox-exporter"
scp -O target/livebox-exporter Amadeus@diskstation.watabox:/var/services/homes/Amadeus/livebox-exporter