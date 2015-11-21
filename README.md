###A WebDAV server supporting private and shared folders

Start the server with:

    docker run -d -p 80:80 --name webdav sftech/webdav

A private folder can be added to the container with:

    docker exec -it webdav adduser USER

You will be prompted for a password. Now you should be able to access the folder: http://localhost/user/USER

A shared folder can be added to the container with:

    docker exec webdav addgroup GROUP

A user can be added to a shared folder with:

    docker exec webdav adduser USER GROUP

Now you should be able to access the folder: http://localhost/GROUP

Remove private or shared folders with:

    docker exec webdav deluser USER
    docker exec webdav delgroup GROUP

Save and restore folders and authentication data with:

    docker exec webdav export >webdav.backup
    docker exec webdav import <webdav.backup

HTTPS support can be enabled as described in [httpd].

[httpd]: https://hub.docker.com/_/httpd
