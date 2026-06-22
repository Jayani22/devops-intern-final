job "hello-devops-batch" {
  datacenters = ["dc1"]

  type = "batch"

  group "hello-group" {

    task "hello-container" {

      driver = "docker"

      config {
        image = "jayani23/hello-devops:latest"
      }

      resources {
        cpu    = 100
        memory = 128
      }
    }
  }
}
