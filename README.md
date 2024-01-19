# dockermallet
This is a customized Mallet repo (ie it has a dataset in the sample-data directory, a Dockerfile, and run_mallet.sh helper script to make Mallet easier to begin using for certain CDS workshops... <br>
# REQUIREMENTS<BR>
1.) Install Docker Desktop https://www.docker.com/products/docker-desktop/  

**As of January 2024 the System Requirements for Docker Desktop are:**
**macOS** [INSTALLATION INSTRUCTIONS FOR macOS](https://docs.docker.com/desktop/release-notes/#:~:text=Minimum%20OS%20version%20to%20install,%2Ffor%2Dmac%237000.)    
Monterey (version 12) or later  
4GB RAM  


**Windows**  [INSTALLATION INSTRUCTIONS FOR WINDOWS](https://docs.docker.com/desktop/install/windows-install/#:~:text=WSL%20version%201.1.3.0%20or,(build%2019045)%20or%20higher.)  
- WSL version 1.1.3.0 or later.  
- Windows 11 64-bit: Home or Pro version 21H2 or higher, or Enterprise or Education version 21H2 or higher.  
- Windows 10 64-bit:  
    * We recommend Home or Pro 22H2 (build 19045) or higher, or Enterprise or Education 22H2 (build 19045) or higher.  

    * Minimum required is Home or Pro 21H2 (build 19044) or higher, or Enterprise or Education 21H2 (build 19044) or higher.  
    Turn on the WSL 2 feature on Windows.   


**LINUX** [INSTALLATION INSTRUCTIONS FOR LINUX](https://docs.docker.com/desktop/install/linux-install/)

- UBUNTU, DEBIAN, FEDORA 64-bit (x86_64 AMD64 CPU)  
- 4GB RAM  
- KVM virtualization support.
- QEMU must be version 5.2 or later. We recommend upgrading to the latest version
- systemd init system.
- Gnome, KDE, or MATE Desktop environment.
- Enable configuring ID mapping in user namespaces
- Recommended: Initialize ```pass``` for credentials management.

2.) **Start Docker by opening Docker in your Applications folder (the Docker icon should appear in your Dock and or menubar)**  
   
# QUICKSTART   
1.) Download the zip file located at: https://github.com/ccarvel/dockermallet/releases/download/cds-custom/mallet-202108_cds-custom.zip  
> Let's assume you are downloading to your Downloads folder
   
2.) Once downloaded, open your Downloads folder and double-click mallet-202108_cds-custom.zip   
> This will create a new folder in your Downloads folder: ```~/Downloads/mallet-202108_cds-custom/```
> The tilde **~** is a placeholder/shortcut for the path on your computer equal to /Users/youruserid/, thus **~/Downloads** is the same as saying **/Users/youruserid/Downloads**      
   
3.) From this point, let's start using the Terminal by using the keyboard shortcut: ```⌘+spacebar``` and typing Terminal and pressing Enter/Return or clicking the Terminal icon      
    
4.) To enter the ~/Downloads/mallet-202108_cds-custom folder within Terminal, type:  
   
```cd ~/Downloads/mallet-202108_cds-custom```  
   
5.) Let's confirm your folder has the necessary files and folders by listing its contents with the command:   
     
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
   
6.) With Docker running, you can proceed to start Mallet using the helper script run_mallet.sh:        
```./run_mallet.sh```  
*(If you receive an error trying to use the ```run_mallet.sh``` script, try running the command  
```chmod +x run_mallet.sh``` first, and then try running it again).     

> This script runs two commands...   
> The first to **build** the Mallet image is the same as running:   
> ```docker build -t mallet .```

> And the second command uses docker to **run** the image as a container:   
> ```docker run -v /${PWD}/sample-data:/usr/local/mallet/sample-data -it --name malletcds mallet bash```
  
You should see docker build Mallet and bring you into the container that holds the Mallet application and your data directory (similar to below):  
```root@a96847ae08ff:/usr/local/mallet#```   

   
The ```sample-data``` directory in your ```~/Downloads/mallet-202108_cds-custom``` folder is where you will want to add the texts you wish to analyze and model--   
This ```sample-data``` directory at ```~/Downloads/mallet-202108_cds-custom/sample-data``` is a linked directory located **within** the container at: ```usr/local/mallet/sample-data```   

   
From here you can enter Mallet commands as instructed.  
   
To run Mallet from the container, which should initially place you at ```/usr/local/mallet/``` you will type ```bin/mallet``` and whatever additional flags and commands you wish to use...    
eg ```bin/mallet import-dir --input sample-data/foldernamewithyourfiles/ --output tutorial.mallet --keep-sequence --remove-stopwords```   

