#!/bin/bash
container_name=jenkins
server_container_name=httpd

container_status=`docker inspect $container_name --format='{{.State.Status}}'`

echo "<html>
<body>
<h2>Jenkins Status: $container_status</h2>
</body>
</html>" > index.html

docker cp index.html $server_container_name:/usr/local/apache2/htdocs
rm index.html