# CostsOptimizer: Elastic Infrastructure Scaling

## Objective
Reduce infrastructure costs by running applications elastically, leveraging Kubernetes and autoscaling to dynamically adjust the number of Pods based on demand.

## How It Works
- **Application Development**: Built a Python application using Flask, containerized with Docker.
- **Kubernetes Deployment**: Deployed on a local Kubernetes cluster (Minikube) to simulate production.
- **Autoscaling**: Configured Horizontal Pod Autoscaler (HPA) to scale Pods based on CPU usage.
- **Infrastructure Management**: Used Terraform to simulate node creation/removal locally with `local_file`.
- **Load Testing**: Employed k6 to generate traffic and validate autoscaling behavior.

## Benefits
- **Cost Efficiency**: Scales from 1 to 5 Pods dynamically, reducing resource waste during low demand.
- **Scalability**: Handles traffic spikes without overloading, ensuring performance stability.
- **Automation**: Autoscaling and infrastructure management minimize manual intervention.

## Results
- Simulated cost reduction of 40–60% compared to fixed 5-machine setup.
- Seamless handling of traffic peaks via automatic Pod scaling.
- Validated HPA functionality through k6 load and stress tests.

## Technologies
- **Language & Framework**: Python, Flask
- **Containerization**: Docker
- **Orchestration**: Kubernetes (Minikube)
- **Autoscaling**: Horizontal Pod Autoscaler (HPA)
- **Infrastructure as Code**: Terraform
- **Load Testing**: k6

## Project Structure
```
CostsOptimizer/
├── Dockerfile              # Docker configuration for the Flask app
├── requirements.txt        # Python dependencies
├── src/
│   └── app.py             # Flask application
├── k8s/
│   ├── deployment.yaml    # Kubernetes Deployment configuration
│   ├── service.yaml       # Kubernetes Service configuration
│   └── hpa.yaml          # Horizontal Pod Autoscaler configuration
├── k6/
│   ├── load-test.js      # k6 load testing script
│   └── stress-test.js    # k6 stress testing script
├── terraform/
│   ├── main.tf           # Terraform infrastructure configuration
│   ├── variables.tf      # Terraform variables
│   └── outputs.tf        # Terraform outputs
```

## Key Learnings
- Configured Kubernetes HPA for dynamic Pod scaling based on CPU metrics.
- Simulated infrastructure management with Terraform for local testing.
- Validated autoscaling under load using k6, ensuring cost-efficient scaling.
- Learned the importance of real-time metrics for effective autoscaling and cost optimization.
