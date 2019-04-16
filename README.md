# Make a Picture voting game with nodejs

**How to run:**

<br/>

### Varian 1: Simple node app

    $ git clone https://github.com/marley-nodejs/cats-app
    $ cd cats-app
    $ npm install
    $ npm start

<br/>

### Varian 2: App inside docker container

(Docker should be installed)

<br/>

    $ docker run -it \
    -p 80:8080 \
    --name nodejs-cats-app \
    marley/nodejs-cats-app

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

http://github.com/marley-nodejs/cats-app-ansible/

<br/>

### Varian 5: Minikube (mini local kubernetes) service

    $ minikube start

    $ minikube addons enable ingress

    $ kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/master/deploy/mandatory.yaml

    $ kubectl apply -f minikube-cats-app-deployment.yaml

    $ kubectl apply -f minikube-cats-app-cluster-ip-service.yaml

    $ kubectl apply -f minikube-cats-app-ingress-service.yaml

    $ minikube ip
    192.168.99.119

    https://192.168.99.119/

<br/>

**Result**

<br/>

![Application](/img/pic1.png?raw=true)

<br/>

![Application](/img/pic2.png?raw=true)

---

**Marley**

<a href="https://jsdev.org">jsdev.org</a>
