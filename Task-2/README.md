# Locally

1. **Create DigitalOcean Droplet**
  - one droplet is enough.

2. **Install Community Eddition Gitlab**
  - add your public ssh key to gitlab (optional but recommended).

3. **Containerize a Python Application**
  - create these ones:
      - new project named `locally` in gitlab and clone it to your local host, `cd ./locally`.
      - Docker file.
      - compose file.
      - .gitlab-ci.yml file.
      - password file: `echo "mysecretpassword" > ./db/password.txt`
      - app.py file.
      - requirements file.
      - .dockerignore file.

4. **Setup GitLab CI/CD**
  - create three runners.
      - tag `dev` for runner-1.
      - tag `prod` for runner-2.
      - runner-3 is without any tags.
  - install kubectl.
  - create two environments.
      - dev
      - prod
  - create one variable.
      - `PPF=/run/secrets/db-password`
5. **Deploy it**
  - push the this project to gitlab.

5. **Output**
  - search `<IP-droplet>:8000` in your web browser.

# On Kubernetes Cluster

1. **Create DigitalOcean Droplets**
  - droplet-1 as master kuber.
  - droplet-2 as worker kuber.
  - droplet-3 as gitlab server.

2. **Install Community Eddition Gitlab**
  - install it on gitlab server.
  - add your public ssh key to gitlab.

3. **Setup Gitlab**
  - create two new projects named `k8s-connection` and `k8s-data` in gitlab server.
  - in `k8s-data` create three runners.
      - tag `dev` for runner-1.
      - tag `prod` for runner-2.
      - runner-3 is without any tags.
  - in `k8s-data` create two environments.
      - dev
      - prod
  - install kubectl.
  - in `k8s-connection` create an agent `.gitlab/agents/k8s-connection/config.yaml`
  - connect gitlab to kubernetes cluster.
  - create an access token for reading registry.

4. **Setup Master Node**
  - install helm on master node.
  - kubectl apply -f k8s-files/namespace.yml
  - kubectl apply -f k8s-files/pass-secret.yml
  - kubectl create secret docker-registry gitlab-secret --docker-server= --docker-username= --docker-password=<access-token> --dry-run=client -o yaml > gitlab-secret.yml
  - kubectl apply -f k8s-files/gitlab-secret.yml
  - kubectl apply -f k8s-files/services.yml
  - kubectl apply -f k8s-files/storage-class.yml
  - kubectl apply -f k8s-files/pv.yml
  - kubectl apply -f k8s-files/pvc.yml

5. **Get Ready for Deployment**
  - in `k8s-data create` these ones:
      - Dockerfile.
      - compose file.
      - .gitlab-ci.yml file.
      - app.py file.
      - requirements file.
      - .dockerignore file.
      - k8s-files directory with files.
      - db directory with password file.

6. **Deploy it**
  - push the `k8s-data`.
