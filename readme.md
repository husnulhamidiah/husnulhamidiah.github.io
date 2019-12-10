## Prerequisites

1. Git v2.23.0 or above
2. Hugo v0.60.1 or above

## Installation

Clone this repo by issuing this command :

``` bash
$ git clone --recurse-submodules --remote-submodules git@github.com:husnulhamidiah/blog.git
$ cd blog
$ git submodule foreach --recursive git checkout master
```

## Usage

### Create a new post

This command will create a new file under `content/post` directory with current epoch time as filename.

```bash
$ make new
$ nano content/post/1575960754.md
```

### Publish blog

This command will automate publishing new content for you. Behind the scence it will build hugo site, create a commit and push on github pages repository.

```
$ make publish
```

## Roadmap

- Add optional commit message when publishing site
   ```
   $ make publish "Fix some typo"
   ```
- Add command to run hugo with draft
   ```
   $ make dev
   ```
- Add command to run hugo without draft
   ```
   $ make start
   ```