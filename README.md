## Related Repositories

<table>
  <tr>
    <td colspan=2 align=center>플랫폼</td>
    <td colspan=2 align=center><a href="https://github.com/PaaS-TA/paasta-deployment">어플리케이션 플랫폼</a></td>
    <td colspan=2 align=center><a href="https://github.com/PaaS-TA/paas-ta-container-platform">컨테이너 플랫폼</a></td>
  </tr>
  <tr>
    <td colspan=2 rowspan=2 align=center>포털</td>
    <td colspan=2 align=center><a href="https://github.com/PaaS-TA/portal-deployment">AP 포털</a></td>
    <td colspan=2 align=center><a href="https://github.com/PaaS-TA/container-platform-portal-release">CP 포털</a></td>
  </tr>
  <tr align=center>
    <td colspan=4><a href="https://github.com/PaaS-TA/PaaS-TA-Monitoring">모니터링 대시보드</a></td>
  </tr>
  <tr align=center>
    <td rowspan=2 colspan=2><a href="https://github.com/PaaS-TA/monitoring-deployment">모니터링</a></td>
    <td><a href="https://github.com/PaaS-TA/PaaS-TA-Monitoring-Release">Monitoring</a></td>
    <td><a href="https://github.com/PaaS-TA/paas-ta-monitoring-logsearch-release">Logsearch</a></td>
    <td><a href="https://github.com/PaaS-TA/paas-ta-monitoring-influxdb-release">InfluxDB</a></td>
    <td><a href="https://github.com/PaaS-TA/paas-ta-monitoring-redis-release">Redis</a></td>
  </tr>
  <tr align=center>
    <td><a href="https://github.com/PaaS-TA/PAAS-TA-PINPOINT-MONITORING-RELEASE">Pinpoint</td>
    <td><a href="https://github.com/PaaS-TA/PAAS-TA-PINPOINT-MONITORING-BUILDPACK">Pinpoint Buildpack</td>
    <td></td>
    <td></td>
  </tr>
  </tr>
  <tr align=center>
    <td rowspan=4 colspan=2><a href="https://github.com/PaaS-TA/service-deployment">AP 서비스</a></td>
    <td><a href="https://github.com/PaaS-TA/PAAS-TA-CUBRID-RELEASE">Cubrid</a></td>
    <td><a href="https://github.com/PaaS-TA/PAAS-TA-API-GATEWAY-SERVICE-RELEASE">Gateway</a></td>
    <td><a href="https://github.com/PaaS-TA/PAAS-TA-GLUSTERFS-RELEASE">GlusterFS</a></td>
    <td><a href="https://github.com/PaaS-TA/PAAS-TA-APP-LIFECYCLE-SERVICE-RELEASE">Lifecycle</a></td>
  </tr>
  <tr align=center>
    <td><a href="https://github.com/PaaS-TA/PAAS-TA-LOGGING-SERVICE-RELEASE">Logging</a></td>
    <td><a href="https://github.com/PaaS-TA/PAAS-TA-MONGODB-SHARD-RELEASE">MongoDB</a></td>
    <td><a href="https://github.com/PaaS-TA/PAAS-TA-MYSQL-RELEASE">MySQL</a></td>
    <td><a href="https://github.com/PaaS-TA/PAAS-TA-PINPOINT-RELEASE">Pinpoint APM</a></td>
  </tr>
  <tr align=center>
    <td><a href="https://github.com/PaaS-TA/PAAS-TA-DELIVERY-PIPELINE-RELEASE">Pipeline</a></td>
    <td align=center><a href="https://github.com/PaaS-TA/rabbitmq-release">RabbitMQ</a></td>
    <td><a href="https://github.com/PaaS-TA/PAAS-TA-ON-DEMAND-REDIS-RELEASE">Redis</a></td>
    <td><a href="https://github.com/PaaS-TA/PAAS-TA-SOURCE-CONTROL-RELEASE">🚩 Source Control</a></td>
  </tr>
  <tr align=center>
    <td><a href="https://github.com/PaaS-TA/PAAS-TA-WEB-IDE-RELEASE-NEW">WEB-IDE</a></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr align=center>
    <td rowspan=1 colspan=2><a href="https://github.com/PaaS-TA/paas-ta-container-platform-deployment">CP 서비스</a></td>
    <td><a href="https://github.com/PaaS-TA/container-platform-pipeline-release">Pipeline</a></td>
    <td><a href="https://github.com/PaaS-TA/container-platform-source-control-release">Source Control</a></td>
    <td></td>
    <td></td>
  </tr>
</table>
<i>🚩 You are here.</i>



  

  



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
    $ wget -O src.zip https://nextcloud.paas-ta.org/index.php/s/YeMLNcr3wQm5GZq/download  

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
        │   └── mariadb-10.5.15-linux-x86_64.tar.gz  
        ├── scm-server  
        │   └── scm-server-1.55-app.tar.gz  
        ├── sourcecontrol-api  
        │   └── sourcecontrol-api.jar  
        ├── sourcecontrol-broker  
        │   └── sourcecontrol-broker.jar  
        ├── sourcecontrol-webui  
        │   └── sourcecontrol-webui.war  
        └── tomcat  
            └── apache-tomcat-8.5.78.tar.gz
    ```
  - Create PaaS-TA Source Control Release  
    ```  
    ## <VERSION> :: release version (e.g. 1.1.1)  
    ## <RELEASE_TARBALL_PATH> :: release file path (e.g. /home/ubuntu/workspace/paasta-sourcecontrol-release-<VERSION>.tgz)
    $ bosh -e <bosh_name> create-release --name=paasta-sourcecontrol-release --version=<VERSION> --tarball=<RELEASE_TARBALL_PATH> --force
    ```  
### Deployment    
  - https://github.com/PaaS-TA/service-deployment  

## Contributors ✨
<a href="https://github.com/PaaS-TA/PAAS-TA-SOURCE-CONTROL-RELEASE/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=PaaS-TA/PAAS-TA-SOURCE-CONTROL-RELEASE" />
</a>
