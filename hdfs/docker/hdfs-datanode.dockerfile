FROM reynoldsm88/hdfs-parent:latest

LABEL maintainer="reynoldsm88@gmail.com"

ENV DATA_NODE_DIR /opt/app/data/datanode

RUN mkdir -p $DATA_NODE_DIR
VOLUME $DATA_NODE_DIR

COPY hdfs/bin/start-datanode.sh /opt/hadoop/bin

# web ui, https, data transfer, metadata ops
EXPOSE 50075 50475 50010 50020 22


ENTRYPOINT /opt/hadoop/bin/start-datanode.sh