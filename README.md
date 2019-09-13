## Dockerized [artifactory_du](devopshq/artifactory-du) utility image [![Docker Pulls](https://img.shields.io/docker/pulls/alexmartin0eposcat/artifactory-du)](https://hub.docker.com/r/alexmartin0eposcat/artifactory-du)
Running this image will run the `artifactory-du` utility against all repositories the specified user is authorized to access.
### Quickstart
```sh
docker run -e ARTIFACTORY_URL=http://localhost:8081/artifactory -e ARTIFACTORY_USER=admin -e ARTIFACTORY_PASSWORD=password alexmartin0eposcat/artifactory-du
```

### Environment variables
- `ARTIFACTORY_URL`: Artifactory URL (without trailing slash)
- `ARTIFACTORY_USER`: Artifactory username
- `ARTIFACTORY_PASSWORD`: Artifactory password/auth token
