# Using Shell Executor

1. **Create One DigitalOcean Droplet**
    - one droplet for for everything

2. **Install Community Eddition Gitlab**

3. **Containerize a Python Application**
    - create a new project in gitlab and clone it to your local host
    - create a Dockerfile
    - create a compose file
    - create a .gitlab-ci.yml file 

4. **Run GitLab CI/CD**
    - create three runners
        - tag `dev` for runner-1
        - tag `prod` for runner-2
        - runner-3 is without any tags
    - create two environments
        - dev
        - prod
    - create one variable
        - `PPF=/run/secrets/db-password`
    - push the python-project to gitlab

5. **Output**
    - search `<IP-droplet>:8000` in your web browser

# Using Kubernetes executors
