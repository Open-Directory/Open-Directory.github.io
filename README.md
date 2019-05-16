# open-directory.github.io
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
* :black_square_button: Write a script that tracks individual directory sizes.
* :black_square_button: Make the index pages prettier, while maintaining simplicity. (Add images, Parent Directory links, formatting)


## Rules
* Avoid "massive dumps" if possible- aim for well organized directories
* Links must have a low-linkrot susceptibility
* Nothing illegal
* No torrents (no seeders = link rot, basically)

## Contribute
This project is quite simple really. Just a few bash scripts that will semi-automatically curate the data into directories for us. It isn't a perfectly automated system, but that's what google, palined, and od-database are already for. This is a static index, not a search index. If you'd like to contribute, submit some pull requests with content you'd like added. Make bash scripts that make the process slightly more automated.
