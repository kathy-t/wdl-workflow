task hello {
  input {
    String docker_image
  }

  command {
    echo 'Hello world!'
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
