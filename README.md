# Make a Picture voting game with nodejs

**How to run:**

    $ git clone https://github.com/marley-nodejs/voting-game
    $ cd voting-game
    $ npm install
    $ npm start

<br/>

**Or you can run app inside docker container**

    $ docker run -it \
    -p 80:8080 \
    --name nodejs-voting-game \
    marley/nodejs-voting-game

<br/>

**As ubuntu linux service (did not test)**

    # vi /etc/systemd/system/voting-game.service

insert content from file **voting-game.service**

    # systemctl enable voting-game.service
    # systemctl start voting-game.service
    # systemctl status voting-game.service

<br/>

**Result**

<br/>

![Application](/img/pic1.png?raw=true)

<br/>

![Application](/img/pic2.png?raw=true)

---

**Marley**

<a href="https://jsdev.org">jsdev.org</a>
