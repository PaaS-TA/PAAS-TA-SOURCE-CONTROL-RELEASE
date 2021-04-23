## PAAS-TA-SOURCE-CONTROL-RELEASE  

### PaaS-TA PaaS-TA Source Control Release Configuration    

  - haproxy : 1 machine  
  - mariadb : 1 machine  
  - scm-server : 1 machine  
  - sourcecontrol-api : 1 machine   
  - sourcecontrol-broker : 1 machine  
  - sourcecontrol-webui : 1 machine   

### Create PaaS-TA Source Control Release  
  - Download the latest PaaS-TA Source Control Release  
    ```   
    $ git clone https://github.com/PaaS-TA/PAAS-TA-SOURCE-CONTROL-RELEASE.git  
    $ cd PAAS-TA-SOURCE-CONTROL-RELEASE  
    ```  
  - Download & Copy "source files" into the src directory  
    ```    
    ## download source files  
    $ wget -O src.zip https://nextcloud.paas-ta.org/index.php/s/Kd87yRSLKMHfZpn/download  

    ## unzip download source files  
    $ unzip src.zip   

    ## src directory  
    src  
        ├── bosh-helpers  
        │   ├── ctl_setup.sh  
        │   ├── ctl_utils.sh  
        │   └── monit_debugger  
        ├── haproxy  
        │   └── haproxy-1.6.5.tar.gz  
        ├── java8  
        │   └── server-jre-8u121-linux-x64.tar.gz  
        ├── mariadb  
        │   └── mariadb-10.5.8-linux-x86_64.tar.gz  
        ├── scm-server  
        │   └── scm-server-1.55-app.tar.gz  
        ├── sourcecontrol-api  
        │   └── sourcecontrol-api.jar  
        ├── sourcecontrol-broker  
        │   └── sourcecontrol-broker.jar  
        ├── sourcecontrol-webui  
        │   └── sourcecontrol-webui.war  
        └── tomcat  
            └── apache-tomcat-8.5.63.tar.gz  
    ```
  - Create PaaS-TA Source Control Release  
    ```  
    ## <VERSION> :: release version (e.g. 1.0.1)  
    ## <RELEASE_TARBALL_PATH> :: release file path (e.g. /home/ubuntu/workspace/paasta-sourcecontrol-release-<VERSION>.tgz)
    $ bosh -e <bosh_name> create-release --name=paasta-sourcecontrol-release --version=<VERSION> --tarball=<RELEASE_TARBALL_PATH> --force
    ```  
### Deployment    
  - https://github.com/PaaS-TA/service-deployment  
