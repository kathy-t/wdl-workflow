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
    docker: "quay.io/ga4gh-dream/dockstore-tool-helloworld@sha256:a2ae01a2f36cd6e82eeb207e6dd35b284c749820e7d5405c9ae68f900a659999"
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
    docker: "collaboratory/dockstore-tool-bamstats:99999"
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
    docker: "collaboratory/dockstore-tool-bamstats@sha256:d7bb0589725587f2f67d0340edb81fd1fcba6c5f38166639cf2a252c939aa30c"
  }
}

workflow test {
  call dockerHubDigest
}
