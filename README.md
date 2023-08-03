# dockermallet
This is one of two customized Mallet packages for (possible) use in classroom settings. <br>
# Requirements<br>
Docker Desktop (running)<br>
```git``` set up for use from your terminal or GitHub Desktop to clone the repository <br>
# Quickstart<br>
From terminal/command line:<br>
```git clone https://github.com/ccarvel/dockermallet.git
```<br>

Change directories to the docker\_mallet directory:<br>
```cd dockermallet
```
Ensure the cloning worked by listing what files are in your new docker\_mallet directory:
```ls -lah```
Which should give you this output:
```total 16
drwxr-xr-x     5 userid  staff   160B Jul 21 17:49 .
drwxr-xr-x@ 1845 userid  staff    58K Jul 21 17:49 ..
drwxr-xr-x    12 userid  staff   384B Jul 21 17:49 .git
-rw-r--r--     1 userid  staff   722B Jul 21 17:49 Dockerfile
-rwxr-xr-x     1 userid  staff   142B Jul 21 17:49 run_mallet.sh
```
<br><br>
 This version makes use of a shell script ```run_mallet.sh```<br>
From the dockermallet directory enter:<br>
```./run_mallet.sh```<br>

You should see docker build Mallet and bring you into the container that holds the Mallet application and your data directory:
```root@a96847ae08ff:/usr/local/mallet#```<br>

From here you can enter Mallet commands as instructed.
