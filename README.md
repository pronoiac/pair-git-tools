pair-git-tools
==============

Tools for using git and pair programming together.

What are these? 
---------------

I'm going to school at App Academy, and we spend most of our time pair programming, swapping the keyboard every 15 minutes or so. Certain problems pop up: 

* Managing git commits and their authorship, as you work on a lab machine. 
* Merging the day's work, with its git history, into our own "daily exercise" repos, with their own history. 

Installing 
----------
They don't depend on anything, I think. They're tiny shell scripts. Once you clone the repo or download the files, you'll need to "chmod +x git*.sh" or the like to make them executable. Put them in some convenient directory, or, like, ~/bin, and then run them from the directory with the git repo you want to work on. 

They're tested on OS X. I don't expect issues on Linux. 

They *do* edit git history. I don't believe they'll misbehave, but *please* do backups. And if you've already synced to Github, then the next time you sync something up, having changed it, you'll have to force push. 
