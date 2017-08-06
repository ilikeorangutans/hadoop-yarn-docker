# YARN/HDFS

- assemble with `docker-compose build` requires hadoop tarball in hadoop directory
- start cluster with `docker-compose up`
- access HDFS namenode at http://localhost:50070
- YARN resource manager: http://localhost:8088
- Submitting apps via spark-submit requires appropriate yarn config
  - when using spark-submit it needs to use a consistend hdfs namenode host, i.e. you'll have to update your /etc/hosts

Ideas

- additional service that runs spark-submit
- can i just run additional services in a docker-compose cluster?


