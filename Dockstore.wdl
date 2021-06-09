version 1.0

task hello {
  String name

  input {
    String docker_image
  }

  command {
    echo 'Hello ${name}!'
  }
  output {
    File response = stdout()
  }
  
  runtime {
    docker: docker_image
  }
}

workflow test {
  String? docker_image = "quay.io/ga4gh-dream/dockstore-tool-helloworld:1.0.2"
  call hello
}
