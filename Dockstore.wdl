task quayTag {
  String name

  command {
    echo 'Hello ${name}!'
  }
  output {
    File response = stdout()
  }
  
  runtime {
    docker: "quay.io/ga4gh-dream/dockstore-tool-helloworld:1.0.2"
  }
}

task quayDigest {
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

task dockerHubTag {
  String name

  command {
    echo 'Hello ${name}!'
  }
  output {
    File response = stdout()
  }
  
  runtime {
    docker: "ubuntu:16.04"
  }
}

task dockerHubDigest {
  String name

  command {
    echo 'Hello ${name}!'
  }
  output {
    File response = stdout()
  }
  
  runtime {
    docker: "ubuntu@sha256:9775877f420d453ef790e6832d77630a49b32a92b7bedf330adf4d8669f6600e"
  }
}

workflow test {
  call quayTag
  call quayDigest
  call dockerHubTag
  call dockerHubDigest
}
