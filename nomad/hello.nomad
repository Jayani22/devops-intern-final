job "hello-devops" {
  datacenters = ["dc1"]

  type = "service"

  group "hello-group" {
  
    task "hello-container" {

      driver = "docker"

      config {
        image = "jayani23/hello-devops:latest"
        force_pull = false
      }

      resources {
        cpu = 100
        memory = 128
      }
    }
  }
}
