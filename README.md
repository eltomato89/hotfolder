# TinyHotfolder

This little shell script watches a folder and runs a user defined shell script when a new file appears!

---

##Env Vars

**DELAY=5**
Sets delay for running the handler script. (To avoid currupted files)

**FILTER=.\*XML$**
Sets filter for *inotifywatch* what files to look out for

## Docker Image

https://hub.docker.com/r/koehler/tiny-hotfolder
koehler/tiny-hotfolder:latest