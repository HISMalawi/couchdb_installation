# CouchDB Installation and Setup Guide

This guide will walk you through the process of installing and setting up CouchDB version 3.2.1 on Ubuntu 16.04 Xenial. Ensure that you are in the terminal and in a folder containing the `install.sh` file and two CouchDB Debian files.

## Installation

1. Open your terminal.

2. Navigate to the folder containing the `install.sh` file and the 3 CouchDB Debian files.
   ```bash
        cd couchdb_installation
   ```

3. Install CouchDB by running the following command:

   ```bash
   bash install.sh
   ```

   This command will uninstall the old CouchDB and install the new upgraded version 3.2.1 of CouchDB.

4. Follow the instructions on the screen prompts for setting up CouchDB. When prompted:
   - Keep the default settings with exceptions on IP address binding (put `0.0.0.0`).
   - On the password, make sure it matches the password found in the following file:
   
     ```
     /var/www/nlims_controller/config/couchdb.yml
     ```
   
     Note: Keep the default admin user.

## Verification

5. To confirm that the installation was successful, run the following command:

   ```bash
   curl -X GET localhost:5984
   ```

   The command should output something like this:

   ```json
   {"couchdb":"Welcome","version":"3.2.1","git_sha":"efb409bba","uuid":"ef9b1b2c8c5258c6df10f6c642c2bee2","features":["access-ready","partitioned","pluggable-storage-engines","reshard","scheduler"],"vendor":{"name":"The Apache Software Foundation"}}
   ```

   Ensure that the version indicates `3.2.1`.

6. Open a web browser and input the following address to access the CouchDB UI:

   ```
   http://server_ipaddress:5984/_utils
   ```

7. Try signing in using the credentials you have set, where the username is `admin`.

## Auto-Start on Server Reboots

8. If everything is working as expected, enable auto-start when the server reboots by running the following command:

   ```bash
   sudo systemctl enable couchdb
   ```

Congratulations! You have successfully installed and configured CouchDB version 3.2.1 on your Ubuntu 16.04 Xenial server.