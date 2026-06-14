# DevOps Intern Final Assessment

Name: Mutcherla Jayani
Date: 14 June 2026

## Project Overview

This project demonstrates the implementation of a complete DevOps workflow using open-source tools and cloud-native practices. The project covers source control, Linux scripting, containerization, CI/CD automation, workload orchestration, and monitoring.

### Technologies Used

* Git & GitHub
* Linux (Ubuntu/WSL)
* Bash Scripting
* Docker
* GitHub Actions
* HashiCorp Nomad
* Grafana Loki
* Python

---

## Project Structure

```text
devops-intern-final/
│
├── README.md
├── hello.py
├── Dockerfile
│
├── scripts/
│   └── sysinfo.sh
│
├── .github/
│   └── workflows/
│       └── ci.yml
│
├── nomad/
│   └── hello.nomad
│
├── monitoring/
│   └── loki_setup.txt
```

---

## Step 1: Git & GitHub Setup

A public GitHub repository was created and initialized with:

* README.md
* Python application (`hello.py`)

### Application

```python
print("Hello, DevOps!")
```

Run:

```bash
python3 hello.py
```

Expected Output:

```text
Hello, DevOps!
```

---

## Step 2: Linux Scripting

A Bash script was created to display system information.

Location:

```text
scripts/sysinfo.sh
```

Features:

* Displays current user
* Displays current date and time
* Displays disk usage

Run:

```bash
chmod +x scripts/sysinfo.sh
./scripts/sysinfo.sh
```

Commands Used:

```bash
whoami
date
df -h
```

---

## Step 3: Docker Containerization

A Docker image was created to containerize the Python application.

### Build Image

```bash
docker build -t hello-devops .
```

### Run Container

```bash
docker run hello-devops
```

Expected Output:

```text
Hello, DevOps!
```

---

## Step 4: CI/CD with GitHub Actions

A GitHub Actions workflow was configured to automatically execute the Python application whenever code is pushed to the repository.

Workflow File:

```text
.github/workflows/ci.yml
```

Pipeline Tasks:

* Checkout repository
* Setup Python environment
* Execute application

This ensures continuous integration and automatic validation of code changes.

---

## Step 5: Job Deployment with Nomad

A Nomad job specification was created to deploy the Dockerized application.

Location:

```text
nomad/hello.nomad
```

Validate Job:

```bash
nomad job validate nomad/hello.nomad
```

Run Job:

```bash
nomad job run nomad/hello.nomad
```

Check Status:

```bash
nomad job status hello-devops
```

### Deployment Notes

The Docker image was successfully built and executed. The container prints:

```text
Hello, DevOps!
```

and exits normally with Exit Code 0.

Since the job is configured as a Nomad **service**, Nomad expects a continuously running process. The application is intentionally short-lived, so Nomad marks the allocation as unhealthy after successful completion. This behavior is expected and demonstrates successful execution of the workload.

---

## Step 6: Monitoring with Grafana Loki

Grafana Loki was deployed using Docker for centralized log collection.

Setup Documentation:

```text
monitoring/loki_setup.txt
```

Start Loki:

```bash
docker run -d --name loki -p 3100:3100 grafana/loki:latest
```

Verify Loki:

```bash
curl http://localhost:3100/ready
```

Expected Output:

```text
ready
```

View Logs:

```bash
docker logs loki
```

---

## Evidence of Execution

The following components were successfully tested:

* Linux system information script
* Docker image build and execution
* GitHub Actions CI pipeline
* Nomad job validation and deployment
* Grafana Loki startup and health verification

---

## Learning Outcomes

Through this project, I gained hands-on experience with:

* Git version control workflows
* Linux command-line operations
* Bash scripting
* Docker image creation and container execution
* Continuous Integration using GitHub Actions
* Workload orchestration using HashiCorp Nomad
* Monitoring and logging using Grafana Loki
* DevOps documentation and troubleshooting

---

## Author

**Mutcherla Jayani*

DevOps Intern Final Assessment - June 2026
