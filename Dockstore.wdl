version 1.0

task hello {
  String name

  input {
    String docker_image
  }

  command {
    echo 'Hello ${name}!'
  }
@@ -9,10 +13,11 @@ task hello {
  }

  runtime {
    docker: "quay.io/ga4gh-dream/dockstore-tool-helloworld:1.0.2"
    docker: docker_image
  }
}

workflow test {
  String? docker_image = "quay.io/ga4gh-dream/dockstore-tool-helloworld:1.0.2"
  call hello
}
