etcd \
--name calico-node1 \
--listen-peer-urls http://192.168.22.10:2380 \
--listen-client-urls http://0.0.0.0:2379 \
--initial-advertise-peer-urls http://192.168.22.10:2380 \
--initial-cluster calico-node1=http://192.168.22.10:2380,calico-node2=http://192.168.22.11:2380 \
--initial-cluster-state new \
--initial-cluster-token etcd-cluster \
--advertise-client-urls http://192.168.22.10:2379
