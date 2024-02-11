1. **Create Three DigitalOcean Droplets**
    - two droplets for kubernetes cluster
    - one droplet for gitlab

2. **Install Community Eddition Gitlab**

3. **Create Kubernetes Cluster**

4. **Containerize a Python Application**
    - clone the app: `git clone https://github.com/docker/python-docker`
    - create a Dockerfile
    - create a compose file
    - run `docker compose up -d --build`
    - now you can the see the output of app by:
    ```bash
    curl http://localhost:5000/
    curl http://localhost:5000/widgets
    curl http://localhost:5000/initdb
    ```
    - (optional) you can use `docker compose watch` too, by uncommenting the commented part in compose file. 
