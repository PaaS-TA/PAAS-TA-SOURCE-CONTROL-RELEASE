# PAAS-TA-SOURCE-CONTROLLER-RELASE
bosh 2.0 PAAS-TA-SOURCE-CONTROLLER-RELASE

src
---
src 폴더에 각 package의 설치파일이 위치해야 한다.

src <br>

├── bosh-helpers
|     └── ctl_setup.sh <br>
|     └── ctl_utils.sh <br>
|     └── monit_debugger <br>
├── haproxy
|     └── haproxy-1.6.5.tar.gz <br>
├── java8
|     └── server-jre-8u121-linux-x64.tar.gz <br>
├── mariadb
|     └── mariadb-10.1.22-linux-x86_64.tar.gz <br>
├── scm-server <br>
│     └── scm-server-1.55-app.tar.gz <br>
├── sourcecontrol-api <br>
│     └── sourcecontrol-api.jar <br>
├── sourcecontrol-broker <br>
│     └── sourcecontrol-broker.jar <br>
├── sourcecontrol-webui <br>
│     └── sourcecontrol-webui.war <br>
├── tomcat <br>
│     └── apache-tomcat-8.5.15.tar.gz <br>
└── README.md <br>


```
$ cd ~/
$ git clone https://github.com/PaaS-TA/PAAS-TA-SOURCE-CONTROLLER-RELASE.git
$ cd ~/PAAS-TA-SOURCE-CONTROLLER-RELASE
$ wget http://45.248.73.44/index.php/s/tfJtFzjFK9WmtDS
$ unzip -xvf PAAS-TA-SOURCE-CONTROLLER-RELASE-SRC.zip
```
