

# open-directory.github.io
http://open-directory.github.io

A script generated, open-directory style catalog of data, usually found in other open-directories.


## Goals
From the start, excellent organization of this open directory is a high priority. If folders and files shift around after the pattern has been established, this could present problems for downloading.

This will be organized according to media type and content, to an extent... good judgement will be employed for decision making for archive vs library directory structure, circumstantially.

The purpose is to create a browsable, open-directory style list of bookmarks, basically.



## Roadmap
* :white_check_mark: Initial files organized with a basic structure
* :white_check_mark: Write bash scripts that update individual folders, generating fresh html files
* :white_check_mark: Fire up Google Cloud Compute VPS for continual updating
* :black_square_button: Determine a method for organizing the content so it can be used with `wget`, `aria2`, etc.
* :black_square_button: Write a master update script that will recurse through other scripts for periodic directory refreshes
* :black_square_button: Script for programatically combining and de-duping partial or incomplete open directory archives & libraries
* :black_square_button: Write a script that tracks individual directory sizes.
* :black_square_button: Make the index pages prettier, while maintaining simplicity. (Add images, Parent Directory links, formatting)


## Rules
* Avoid "massive dumps" if possible- aim for well organized directories
* Links must have a low-linkrot susceptibility
* Nothing illegal
* No torrents (no seeders = link rot, basically)

## Contribute
This project is quite simple really. Just a few shell scripts generating HTML files in order to semi-automatically curate the data into directories for us. Sure, it isn't a perfectly automated system, but that's what google, palined, and od-database are already for. This is a static index, not a search index. If you'd like to contribute, here's how:

* If you can write some scripts, please do so.
* If you can design a template to make the directories look more polished, you're the right man for the job.
* If you can't code or design, then you can brainstorm and submit some ideas through the issue tracker at the top of this page.
* Financial Sponsors and Donors:
  * Hosting the data is done by the source- third party "volunteers," if you will.
  * Hosting the actual directory pages is done by Microsoft via GitHub.
  * The cost of the Virtual Private Server I'm running for triggering the scripts, and other general maintenance needs, are being generously covered by Google.
  * You're welcome to give me your money if you really want to, but I'm not asking for it. If that's what you need to do, open an issue and I'll update this readme with some contact info. :)


## Stats (Estimated only)
Total size: 277 GB
