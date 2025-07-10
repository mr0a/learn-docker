## Learn Docker
- Docker is used to create a containerised applications which can run on any machine, independent of the os or dependencies installed.
- Docker is os independent but not architecture(x86 amd, arm64) independent.
- Docker along with kubernetes helps to run the apps efficiently utilising the server resources. Multiple applications can be ran on a server with resources allocated for each and this also helps in scaling the application as needed.
- It helps to create networks/volumes for an application to work without conflicting the dependencies (like directory/port) of other application.

#### Pros
- Use server resource efficiently, improve security by removing unwanted dependencies, containerising the application with its dependencies so no need to worry about the sources of libraries once built, separate network and disk volume.

### Cons
- Nothing I know as of now

### Example
This is used to run a image detached and it will be cleaned up
`
docker run -d --rm --name node-app -p 8080:8080 -v node_app_volume:/app/logs --network basic_app_network --env DBHOST=node-mongo node-app-with-env
`