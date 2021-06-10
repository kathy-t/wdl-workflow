task hello {
  String name

  command {
    echo 'Hello ${name}!'
  }
  output {
    File response = stdout()
  }
  
  runtime {
    docker: "quay.io/ga4gh-dream/dockstore-tool-helloworld:99999"
  }
}

workflow test {
  call hello
}
