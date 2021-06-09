task hello {
  String name
  String docker_image = "quay.io/ga4gh-dream/dockstore-tool-helloworld:1.0.2"

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
  call hello
}
