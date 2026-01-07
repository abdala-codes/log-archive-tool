# Log Archive Tool

This project is a simple Bash script that archives log files from a specified directory.  
I built it as a beginner Linux / shell scripting exercise to get more comfortable working with the command line, files, permissions, and basic automation.

The script takes a log directory as input, compresses the logs into a `.tar.gz` file, and keeps a record of when the archive was created.

## Project Link

This project is based on the Roadmap.sh Log Archive Tool project:  
https://roadmap.sh/projects/log-archive-tool

## Features

- Accepts a log directory as a command-line argument
- Compresses logs into a `.tar.gz` archive
- Stores archives in an `archives/` directory
- Logs the date and time of each archive
- Handles unreadable or restricted log files gracefully

## How to Run

1. Clone the repository:
```bash
git clone https://github.com/abdala-codes/log-archive-tool.git
cd log-archive-tool
