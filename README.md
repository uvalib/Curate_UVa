# Curate_UVa

Curate_UVa is the University of Virginia's repository for scholarly work.  It is developed using the [Curate](https://github.com/projecthydra/curate) engine.
Curate is a [Rails engine](http://edgeguides.rubyonrails.org/engines.html) leveraging [ProjectHydra](http://projecthydra.org) and [ProjectBlacklight](http://projectblacklight.org/) components to deliver a foundation for an Institutional Repositories.

* [Installation](#installation)
  * [Install the Curate engine](#install-the-curate-engine)
  * [Install the Curate_UVa application](#install-the-curate_uva-application)
* [Running Curate_UVa](#running-curate_uva)
* [Stopping Redis and Jetty](#stopping-redis-and-jetty)

# Installation

This installation requires Ruby 2.0.0p247 and Rails 4.0.2.

At the end of the installation, you should have a working directory with a 'curate' subdirectory and a 'Curate_UVa' subdirectory.

## Install the Curate engine

Follow the installation instructions for [Curate](https://github.com/projecthydra/curate#curate----).

### Prerequisites

At a minimum, install these prerequisites listed in the **Developing and Contributing for the Curate gem** section:
* imagemagick (http://www.imagemagick.org/script/index.php)
* fits.sh (https://code.google.com/p/fits/wiki/installing)
* Redis (http://redis.io/)


### Clone the Curate repository

From the command line:
```bash
git clone https://github.com/projecthydra/curate.git curate
```

Run bundle install:
```bash
cd curate
bundle install
```

### Jetty

Curate uses Jetty for development and testing.
To install jetty, you should only need to do this once (unless you remove the ./jetty directory)

```bash
$ rake jetty:unzip
```

## Install the Curate_UVa application

### Clone the Curate_UVa repository

From the command line:
```bash
git clone https://github.com/uvalib/Curate_UVa.git Curate_UVa
```

Run bundle install:
```bash
cd Curate_UVa
bundle install
```

The Gemfile for Curate_UVa points to a local curate directory path for the curate gem.

```ruby
gem 'curate', path: '../curate'
```

This enables a developer to develop code for Curate, the engine, as well as Curate_UVa, the Curate-based application.

# Running Curate_UVa

In the directory in which you installed Redis, run redis-server and leave it running.
```bash
src/redis-server
```

In the curate directory, start jetty.
```bash
rake jetty:start
```

Start the rails server in the Curate_UVa directory.
```bash
rails server
```
You should be able to access Curate_UVa at localhost:3000 from a web browser.

# Stopping Redis and Jetty

To stop Redis, simply Ctrl-C to kill the application.

In the curate directory, start jetty.
```bash
rake jetty:start
```

To stop jetty:
```bash
rake jetty:stop
```
