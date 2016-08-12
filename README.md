# docker-uc-deploy
UCD server in a Docker container connecting to a MySQL container

See the docker-compose.yml for an example of how to run.

Build
----
````
ARTIFACT_DOWNLOAD_URL="http://localhost/ibm-ucd-6.2.1.2.801550.zip"
ARTIFACT_VERSION="6.2.1.2.801550"

docker build -t stackinabox/urbancode-deploy:$ARTIFACT_VERSION \
				--build-arg ARTIFACT_DOWNLOAD_URL=$ARTIFACT_DOWNLOAD_URL \
				--build-arg ARTIFACT_VERSION=$ARTIFACT_VERSION .
````
Run
----
````
	docker run -d --name urbancode_deploy -e LICENSE=accept -p 7918:7918 -p 8080:8080 -p 8443:8443 -e DATABASE_USER=<mysqluser> -e DATABASE_PASS=<mysqlpassword> -e DATABASE_NAME=<mysqldbname>-e DATABASE_PORT=<3306> -e DATABASE_HOST=<mysqldbcontainername> --net=<mysqldbcontainernetwork>  stackinabox/urbancode-deploy:%version% 
````
- you can get to the web console by pointing your browser at http://%your-docker-hostname%:8080  login with admin:admin
