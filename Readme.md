# Make a Picture voting game with nodejs

**How to run:**

<br/>

### Varian 1: Simple node app

    $ git clone https://github.com/webmakaka/cats-app
    $ cd cats-app
    $ npm install
    $ npm start

<br/>

### Varian 2: App inside docker container

(Docker should be installed)

<br/>

    $ docker run -it \
    -p 80:8080 \
    --name cats-app \
    webmakaka/cats-app

<br/>

### Varian 3: As ubuntu linux service

(Docker should be installed)

    # vi /etc/systemd/system/cats-app.service

insert content from file **cats-app.service**

    # systemctl enable cats-app.service
    # systemctl start cats-app.service
    # systemctl status cats-app.service

<br/>

### Varian 4: By Ansible script

http://github.com/webmakaka/cats-app-ansible/

<br/>

### Varian 5: Minikube (mini local kubernetes) service

    $ minikube version
    minikube version: v1.4.0

    $ minikube start

    $ minikube addons enable ingress


**Using helm3:**

    $ helm repo add webmakaka https://charts-repo.webmakaka.com

    $ helm repo update

    $ helm search repo webmakaka/

    $ helm install cats-app webmakaka/cats-app

<br/>

    // To remove
    // $ helm delete cats-app
    // $ helm repo remove webmakaka



**Or Manually:**

    $ kubectl apply -f https://raw.githubusercontent.com/webmakaka/cats-app/master/minikube/minikube-cats-app-deployment.yaml

    $ kubectl apply -f https://raw.githubusercontent.com/webmakaka/cats-app/master/minikube/minikube-cats-app-cluster-ip-service.yaml

    $ kubectl apply -f https://raw.githubusercontent.com/webmakaka/cats-app/master/minikube/minikube-cats-app-ingress-service.yaml

<br/>

    $ kubectl get ing
    NAME              HOSTS   ADDRESS   PORTS   AGE
    ingress-service   *                 80      24s

<br/>

    $ minikube ip
    192.168.99.119

    https://192.168.99.119/

<br/>

### Varian 6: Google Cloud (GKE) (LoadBalancer)

    $ gcloud container clusters create cats-cluster \
        --num-nodes 2 \
        --machine-type n1-standard-1 \
        --zone us-central1-a

<br/>

    $ kubectl apply -f https://raw.githubusercontent.com/webmakaka/cats-app/master/minikube-cats-app-deployment.yaml

<br/>

    $ kubectl expose deployment minikube-cats-app-deployment --type="LoadBalancer"

<br/>

    $ kubectl get services

http://35.226.108.248:8080/


<br/>

### IBM Cloud 

**(Бесплатно, без ввода кредиток, без траты $200 промо, предоставляемой IBM)**

1. Create IBM Cloud Account
2. Cloud Foundry apps -> Create Node.

Бесплатно только в Лондоне сейчас.
256MB

3. install shell

    $ curl -fsSL https://clis.cloud.ibm.com/install/linux | sh

<br/>

    $ cd cats-app/app
    $ node -v > .nvmrc

    $ vi manifest.yml

```yaml
applications:
- name: CatsApp
random-route: true
memory: 256M
```

    $ ibmcloud login

    $ ibmcloud account orgs -r all
    Getting orgs in all regions as mygmailmailbox@gmail.com...
    Retrieving current account...
    OK

    Name                   Region   Account owner          Account ID                         Status   
    mygmailmailbox@gmail.com   eu-gb    mygmailmailbox@gmail.com   0e83bc7e5fa94a30afa7b2f49f6439a6   active   

<br/>

    $ ibmcloud target --cf -r eu-gb
    Switched to region eu-gb

    Targeted Cloud Foundry (https://api.eu-gb.cf.cloud.ibm.com)

    Targeted org mygmailmailbox@gmail.com

    Targeted space dev
                        
    API endpoint:      https://cloud.ibm.com   
    Region:            eu-gb   
    User:              mygmailmailbox@gmail.com   
    Account:           Marley Marley's Account (0e83bc7e5fa94a30afa7b2f49f6439a6)   
    Resource group:    No resource group targeted, use 'ibmcloud target -g RESOURCE_GROUP'   
    CF API endpoint:   https://api.eu-gb.cf.cloud.ibm.com (API version: 2.153.0)   
    Org:               mygmailmailbox@gmail.com   
    Space:             dev   

<br/>

    $ ibmcloud cf push

<br/>

    $ ibmcloud cf apps
    Invoking 'cf apps'...

    Getting apps in org mygmailmailbox@gmail.com / space dev as mygmailmailbox@gmail.com...
    OK

    name      requested state   instances   memory   disk   urls
    CatsApp   started           1/1         256M     1G     CatsApp.eu-gb.cf.appdomain.cloud


<br/>

browser: CatsApp.eu-gb.cf.appdomain.cloud


<br/>

**Result**

<br/>

![Application](/img/pic1.png?raw=true)

<br/>

![Application](/img/pic2.png?raw=true)

---

<br/>

**Marley**

Any questions in english: <a href="https://jsdev.org/chat/">Telegram Chat</a>  
Любые вопросы на русском: <a href="https://jsdev.ru/chat/">Телеграм чат</a>
