# Hadoop Yarn Cluster in docker-compose

Contains docker and docker-compose files that spin up a basic Hadoop Yarn cluster containing a HDFS namenode, HDFS datanode, a Yarn master,
and a single Yarn node.

# Usage

- assemble with `docker-compose build` requires hadoop tarball in hadoop directory
- start cluster with `docker-compose up -d`
- access HDFS namenode at http://localhost:50070
- YARN resource manager: http://localhost:8088
- Submitting apps via spark-submit requires appropriate yarn config
  - when using spark-submit it needs to use a consistend hdfs namenode host, i.e. you'll have to update your /etc/hosts

- Start spark container via `docker-compose run spark` - this gives you a container with a spark and hadoop installed. /spark is a volume shared with the host, so you can move data in here.

# Ideas

- additional service that runs spark-submit
- can i just run additional services in a docker-compose cluster?


