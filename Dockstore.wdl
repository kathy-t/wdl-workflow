
workflow test {
  call hello
}

task hello {
  String docker_image = "quay.io/ga4gh-dream/dockstore-tool-helloworld:1.0.2"

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

