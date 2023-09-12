# dockermallet
This is a customized Mallet repo (ie it has a dataset in the sample-data directory, a Dockerfile, and run_mallet.sh helper script to make Mallet easier to begin using for certain CDS workshops... <br>
# REQUIREMENTS<BR>
0.) Install Docker Desktop https://www.docker.com/products/docker-desktop/
- start Docker by opening Docker in your Applications folder (the Dockjer icon should appear in your Dock and or menubar)
   
# QUICKSTART   
1.) Download the zip file located at: https://github.com/ccarvel/dockermallet/releases/download/cds-custom/mallet-202108_cds-custom.zip  
> Let's assume you are downloading to your Downloads folder
   
2.) Once downloaded, open your Downloads folder and double-click mallet-202108_cds-custom.zip   
> This will create a new folder in your Downloads folder: ```~/Downloads/mallet-202108_cds-custom/```
> The tilde **~** is a placeholder/shortcut for the path on your computer equal to /Users/youruserid/, thus **~/Downloads** is the same as saying **/Users/youruserid/Downloads**      
   
3.) From this point, let's start using the Terminal by using the keyboard shortcut: ```⌘+spacebar``` and typing Terminal and pressing Enter/Return or clicking the Terminal icon      
> 
  
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

