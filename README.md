# An Crúbadán - clld

This project holds the website for the **An Crúbadán** project, built
on the [```clld``` framework](http://clld.readthedocs.org/).

This documentation was written by Nick Lewchenko.  Questions about it
should be directed to him.

## Installation

### Dependancies

This server depends on the following utilities:

- git

- wget

- virtualenv (Ubuntu package: ```python-virtualenv```)

- python2.7

- a webserver, probably ```nginx```

### System Prep

#### User

The clld server process should be run as an unprivileged user, so
create one for that purpose if you don't have one.

#### Data Directory

The main data directory, ```/data/crubadan-clld``` must be in place
and read/writable for the clld server user from the last step.

In the main data directory, you must also create the ```files/```,
```metadata/```, and ```olac/olac.xml``` files and directories and
fill them (this should be all taken care of by the scripts that run
the core An Crúbadán services).

### Server Setup

#### Fetch Sources

It doesn't matter where you put these, but do note that they have to
remain in place while the service is running.  A sensible place would
be the new user's home directory.

Make sure that you are running this (and all commands given from
here-on in the document) as the user who will run the server:

    ~ $ git clone http://github.com/kscanne/crubadan_clld
    ~ $ cd crubadan_clld

#### Update ```nginx``` Configuration

You should now be in the sources' root directory.

Copy ```./crubadan_clld.conf``` to ```/etc/nginx/conf.d/``` (This step
will require root privileges, of course).

This configuration will probably need some adjustments to work on your
system.  I'm no ```nginx``` configuration master...  If there are any
general rookie mistakes, please pull-request.

#### Set Up Sandbox Environment

This server has many python dependencies not listed above, but they
are meant to be installed into a local sandbox with one command:

    ~/crubadan_clld $ ./sandbox-init

This sets up a sandboxed python installation in ```.venv```.  Commands
given to ```./service-control``` will use this behind the scenes.


## Operations

#### Building (and re-building) the Database

Before starting the server, build its database:

    ~/crubadan_clld $ ./service-control build

This will write into ```/data/crubadan-clld```, which again should be
writable with your unprivileged server-user.

This same command should be run any time there are updates to the data
available in the project.  Doing so does **not** require a restart of
the server processes.

### Starting the Server

Make sure that nginx is updated and running, and then start the clld
server processes:

    ~/crubadan_clld $ ./service-control start

If this goes wrong, or seems to have, check if the pid files were
created and whether any ```pserve``` processes are running (there
should be two of each):

    ~/crubadan_clld $ ls | grep pid
    ~/crubadan_clld $ ps -e | grep pserve

The server should now be running!  Navigate a web browser to the
hostname you've set up and see if it's there.

### Stopping the Server

The clld server processes can be stopped with:

    ~/crubadan_clld $ ./service-control stop

The same troubleshooting steps given for ```start``` can be used here
if it seems to fail.

### Updating the Server

If upstream changes are made, just stop the server, use a git-pull to
update the sources in place, and rebuild the sandbox and database
before starting again.

    ~/crubadan_clld $ ./service-control stop
    ~/crubadan_clld $ git pull
    ~/crubadan_clld $ rm -r .venv
    ~/crubadan_clld $ ./sandbox-init
    ~/crubadan_clld $ ./service-control build
    ~/crubadan_clld $ ./service-control start

### Glottolog Data

The metadata from [Glottolog](http://glottolog.org/meta/downloads)
(used for the landing-page maps) is fetched only once; subsequent
invocations of ```./service-control build``` will use the
previously-downloaded csv file.

If a new version of the Glottolog data is released, just remove the
downloaded data and rebuild the database to update it.

    ~/crubadan_clld $ rm -r /data/crubadan-clld/glottolog
    ~/crubadan_clld $ ./service-control build
