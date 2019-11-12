# PAAS-TA-SOURCE-CONTROLLER-RELASE
bosh 2.0 PAAS-TA-SOURCE-CONTROLLER-RELASE

src
---
src 폴더에 각 package의 설치파일이 위치해야 한다.

src  

├── bosh-helpers  
│     └── ctl_setup.sh   
│     └── ctl_utils.sh   
│     └── monit_debugger  
├── haproxy  
│     └── haproxy-1.6.5.tar.gz   
├── java8  
│     └── server-jre-8u121-linux-x64.tar.gz   
├── mariadb  
│     └── mariadb-10.1.22-linux-x86_64.tar.gz   
├── scm-server   
│     └── scm-server-1.55-app.tar.gz   
├── sourcecontrol-api   
│     └── sourcecontrol-api.jar   
├── sourcecontrol-broker   
│     └── sourcecontrol-broker.jar   
├── sourcecontrol-webui   
│     └── sourcecontrol-webui.war   
├── tomcat   
│     └── apache-tomcat-8.5.15.tar.gz   

```
$ cd ~/
$ git clone https://github.com/PaaS-TA/PAAS-TA-SOURCE-CONTROLLER-RELASE.git
$ cd ~/PAAS-TA-SOURCE-CONTROLLER-RELASE
$ wget -O src.zip http://45.248.73.44/index.php/s/tfJtFzjFK9WmtDS/download
$ unzip -xvf src.zip -d <EXTRACT_PATH>
```  
