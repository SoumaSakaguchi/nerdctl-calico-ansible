# nerdctl+calicoテスト環境

## 使い方
```
$ git clone https://github.com/SoumaSakaguchi/nerdctl-calico-ansible.git
$ cd ./nerdctl-calico-ansible
$ vagrant up
$ ./tools/knowns-host.sh
$ ./tools/ping.sh
$ ansible-playbook -i hosts.ini site.yml -u vagrant --private-key=/home/$USER/.vagrant.d/insecure_private_key
$ vagrant ssh calico-node1
```

## knowns-host更新
```
for port in 2210 2211; do ssh-keygen -f "/home/$USER/.ssh/known_hosts" -R "[127.0.0.1]:$port"; done
```

## 疎通確認
```
ansible -i hosts.ini node -m ping -u vagrant --private-key=/home/$USER/.vagrant.d/insecure_private_key
```

## プレイブック実行
```
ansible-playbook -i hosts.ini site.yml -u vagrant --private-key=/home/$USER/.vagrant.d/insecure_private_key
```
