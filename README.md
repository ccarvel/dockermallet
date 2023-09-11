# dockermallet
This is the second of two customized Mallet packages for (possible) use in classroom settings. <br>
# REQUIREMENTS<BR>
0.) Install Docker Desktop https://www.docker.com/products/docker-desktop/   
0a.) ```wget``` or ```curl``` or ```git``` should be available from your Terminal if running macOS or Linux...   
# QUICKSTART<BR>
From terminal/command line:<br>
- a)  ```wget https://github.com/ccarvel/dockermallet/releases/download/cds-custom/mallet-202108_cds-custom.zip```  
or  
- b) ```curl -O https://github.com/ccarvel/dockermallet/releases/download/cds-custom/mallet-202108_cds-custom.zip```  
or  
- c) ```git clone https://github.com/ccarvel/dockermallet.git```

IF **A)** OR **B)**, UNZIP THE FILE:  
- ```unzip mallet-202108_cds-custom.zip```  
then,   
- ```cd mallet-20218_cds-custom```  
Ensure the wget or curl command worked by listing what files are in your new mallet-202108_cds-custom directory:  
```ls -lah```  

IF **C)**, CHANGE DIRECTORIES TO THE ```dockermallet``` DIRECTORY:  
```cd dockermallet```    
Ensure the cloning worked by listing what files are in your new mallet-202108_cds-custom directory:  
```ls -lah```
Which should give you something similar to this this output:  
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
drwxr-xr-x@    7 userid  staff   224B Sep 11 09:42 sample-data
drwxr-xr-x@    3 userid  staff    96B Jun 12  2021 src
drwxr-xr-x@    9 userid  staff   288B Jun 12  2021 stoplists
drwxr-xr-x@    3 userid  staff    96B Jun 12  2021 test
```   
   
If Docker is running, you can proceed by using the helper script:     
```./run_mallet.sh```   
OR   
You can build the image by entering:  
```docker build -t mallet .```  
and then by using docker run:  
```docker run -v /${PWD}/sample-data:/usr/local/mallet/sample-data -it --name malletcds mallet bash```     
You should see docker build Mallet and bring you into the container that holds the Mallet application and your data directory (similar to below):  
```root@a96847ae08ff:/usr/local/mallet#```   
You can use the existing ```sample-data``` directory in your ```mallet-202108_cds-custom``` OR ```dockermallet``` directory as the location for the texts you wish to analyze and model for topics--   
From here you can enter Mallet commands as instructed.  

