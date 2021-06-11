task hello {
  String name

  command {
    echo 'Hello ${name}!'
  }
  output {
    File response = stdout()
  }
  
  runtime {
    docker: "quay.io/ga4gh-dream/dockstore-tool-helloworld@sha256:a2ae01a2f36cd6e82eeb207e6dd35b284c749820e7d5405c9ae68f900a65dc5b"
  }
}

workflow test {
  call hello
}
