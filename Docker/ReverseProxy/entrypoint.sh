#!/bin/sh

#echo "My File, My Choice" > "file.txt"
echo 'creating index.html'
cat > /usr/share/nginx/html/index.html << ENDOFFILE
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Docker Nginx</title>
</head>
<body>
  <h2>This is coming from the entrypoint file</h2>
</body>
</html>
ENDOFFILE

echo 'creating proxy file for NGINX'
cat > /etc/nginx/conf.d/default.conf << ENDOFFILE
server{
  location / {
    proxy_pass http://telex.hu;
  }
}
ENDOFFILE

echo 'Starting NGINX reverse proxy'
nginx -g 'daemon off;'