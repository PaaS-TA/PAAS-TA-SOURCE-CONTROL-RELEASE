# PAAS-TA-SOURCE-CONTROLLER-RELASE
bosh 2.0 PAAS-TA-SOURCE-CONTROLLER-RELASE

### Create PaaS-TA Source Controller Service Release
- Download the latest Release
    ```  
    $ git clone https://github.com/PaaS-TA/PAAS-TA-SOURCE-CONTROL-RELEASE.git
    ```
- Download & Copy "source files" into the src directory
    ```  
    ## download source files
    $ cd PAAS-TA-SOURCE-CONTROLLER-RELASE  
    $ wget -O src.zip http://45.248.73.44/index.php/s/YRywsHyRzD5riqQ/download
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
        │   └── mariadb-10.1.22-linux-x86_64.tar.gz  
        ├── scm-server  
        │   └── scm-server-1.55-app.tar.gz  
        ├── sourcecontrol-api  
        │   └── sourcecontrol-api.jar  
        ├── sourcecontrol-broker  
        │   └── sourcecontrol-broker.jar  
        ├── sourcecontrol-webui  
        │   └── sourcecontrol-webui.war  
        └── tomcat  
        │   └── apache-tomcat-8.5.15.tar.gz  
    ```
- Create PaaS-TA Source Controller Service Release
    ```
    $ cd PAAS-TA-SOURCE-CONTROLLER-RELASE
    ## <RELEASE_TARBALL_PATH> :: release file path (e.g. /home/ubuntu/workspace/paasta-sourcecontrol-release-1.0.tgz) 
    $ bosh -e <bosh_name> create-release --name=paasta-sourcecontrol-release --version=1.0 --tarball=<RELEASE_TARBALL_PATH> --force
    ```
