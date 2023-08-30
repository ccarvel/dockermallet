# dockermallet
This is the second of two customized Mallet packages for (possible) use in classroom settings. <br>
# Requirements<br>
Docker Desktop (running)<br>
```wget``` or ```curl``` set up for use from your terminal or GitHub Desktop to clone the repository <br>
# Quickstart<br>
From terminal/command line:<br>
- ```wget https://github.com/ccarvel/dockermallet/releases/download/cds-custom/mallet-202108_cds-custom.tar.gz```  
or  
- ```curl -O https://github.com/ccarvel/dockermallet/releases/download/cds-custom/mallet-202108_cds-custom.tar.gz```

Untar the file:  
- ```tar -xvf mallet-20218_cds-custom.tar.gz```

Change directories to the mallet-202108_cds-custom directory:  
```cd mallet-202108_cds-custom```   
Ensure the cloning worked by listing what files are in your new mallet-202108_cds-custom directory:  
```ls -lah```
Which should give you this output:
```total 176
drwxr-xr-x@   25 userid  staff   800B Aug 30 13:02 .
drwx------@ 1976 userid  staff    62K Aug 30 12:48 ..
-rw-r--r--@    1 userid  staff    14K Aug  3 18:15 .DS_Store
-rw-r--r--@    1 userid  staff   133B Jun 12  2021 .gitignore
-rw-r--r--@    1 userid  staff   320B Jun 12  2021 .travis.yml
-rw-r--r--@    1 userid  staff   1.5K Aug 30 13:02 CDS-README.md
-rw-r--r--@    1 userid  staff   1.4K Jun 12  2021 CHANGELOG.md
-rw-r--r--@    1 userid  staff   1.2K Aug  3 15:32 Dockerfile
-rw-r--r--@    1 userid  staff    11K Jun 12  2021 LICENSE
-rw-r--r--@    1 userid  staff   3.5K Jun 12  2021 Makefile
-rw-r--r--@    1 userid  staff   3.8K Aug 30 13:03 README.md
-rw-r--r--@    1 userid  staff    27B Jun 12  2021 _config.yml
drwxr-xr-x@   16 userid  staff   512B Jun 12  2021 bin
-rw-r--r--@    1 userid  staff   4.0K Jun 12  2021 build.xml
drwxr-xr-x@    3 userid  staff    96B Aug 18  2021 class
drwxr-xr-x@    9 userid  staff   288B Aug  3 11:13 data
drwxr-xr-x@    4 userid  staff   128B Aug 18  2021 dist
-rw-r--r--@    1 userid  staff   562B Aug  3 10:54 docker-compose.yml
drwxr-xr-x@    5 userid  staff   160B Aug 18  2021 lib
-rw-r--r--@    1 userid  staff   8.9K Jun 12  2021 pom.xml
-rwxr-xr-x@    1 userid  staff   177B Aug  3 15:08 run_mallet.sh
drwxr-xr-x@    7 userid  staff   224B Aug  3 09:42 sample-data
drwxr-xr-x@    3 userid  staff    96B Jun 12  2021 src
drwxr-xr-x@    9 userid  staff   288B Jun 12  2021 stoplists
drwxr-xr-x@    3 userid  staff    96B Jun 12  2021 test
```
<br><br>
 If Docker is running you can build the image by entering:  
```docker build -t mallet .```  
and run:  
```docker run -v /${PWD}/tmp:/usr/local/mallet/malletmp -it --name malletcds mallet bash```  
<br>
 You can also start the container with the helper script:     
```run_mallet.sh```<br>
From the mallet-202108_cds-custom directory enter:<br>
```./run_mallet.sh```<br>

You should see docker build Mallet and bring you into the container that holds the Mallet application and your data directory:
```root@a96847ae08ff:/usr/local/mallet#```<br>

From here you can enter Mallet commands as instructed.
