# DevOps Intern Final Assessment Project

Name: Mutcherla Jayani

Date: 14 June 2026

## Project Description

This repository demonstrates:
- Git, GitHub
- Linux Scripting
- Docker
- GitHub Actions CI/CD
- Nomad Deployment
- Grafana Loki Monitoring

## Nomad Deployment

A Nomad job file (nomad/hello.nomad) was created to run the Dockerized application.

```
nomad job validate nomad/hello.nomad
```
```
nomad job run nomad/hello.nomad
```

The container image was successfully built, pushed to Docker Hub, and executed by Nomad.

Since the application only prints Hello, DevOps! and exits immediately, the container terminates with Exit Code 0 (successful execution). Nomad marks the allocation as unhealthy because the job is configured as a service, which expects a continuously running process.

This behavior confirms that:

- Docker image deployment through Nomad is working.
- The application executes successfully.
- The allocation exits normally after completing its task.
