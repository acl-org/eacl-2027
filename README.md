# EACL 2027 official website

This is the code for the official website for the 2027 Conference of the European Chapter of the Association for Computational Linguistics (EACL).

It's using the modified version of [Minimal Mistakes Jekyll Theme](https://mmistakes.github.io/minimal-mistakes/).

# Table of contents

* [Building Locally](#building-locally)
   * [Using Ruby](#using-ruby)
   * [Using Docker](#using-docker)
      * [Run and Go](#run-and-go)
      * [Build and Reuse](#build-and-reuse)
* [Forking for a New Conference](#forking-for-a-new-conference)
   * [Important Files](#important-files)
   * [Domain Setup](#domain-setup)
* [License](#license)

# Building Locally

GitHub Pages doesn't allow deploying changes in test mode so that they can be previewed before publishing. Therefore, if you want to see what the changes would look like, you need to build the website on your local machine. This section describes two possible options to do that:

## Using Ruby

This requires installing Ruby and various dependencies. If you are having trouble doing so, you may want to use the [Docker-based](#local-testing-with-docker) solution instead.

1. Install bundler: `sudo gem install bundler`. Make sure you have Ruby and Bundler versions > 2.4.

2. Clone this repository. Note that this repository uses submodules so to properly check out the submodule code, run `git submodule init` and `git submodule update` after you clone the repository. You will need the submodule to generate the schedule for the website.

3. Run the gems needed by this repository: `sudo bundle install`.
   *Note*: This step might fail when installing the `nokogiri` gem. If this happens, run `bundle config build.nokogiri --use-system-libraries` and then run `bundle install` again.

4. Start the jekyll server by running `bundle exec jekyll serve`.

5. You can then see the website at http://localhost:4000.

## Using Docker

First you need to install Docker.

- For instructions on how to install docker for Windows 10, go [here](https://docs.docker.com/docker-for-windows/install/), or for slightly older Windows computers, go [here](https://docs.docker.com/toolbox/overview/).

- For instructions on how to install docker for MacOS (at least El Capitan 10.11), go [here](https://docs.docker.com/docker-for-mac/install/), or for slightly older MacOS computers, go [here](https://docs.docker.com/toolbox/overview/)

- For instructions on how to install docker for Ubuntu (at least 14.04), go [here](https://docs.docker.com/install/linux/docker-ce/ubuntu). This link also has options for other Linux distributions.

To test your installation, just type: `docker --version` at the terminal/command prompt. A successful install will result in something that looks like: `Docker version 17.05.0-ce, build 89658be`.

Build a Docker image from the included [`Dockerfile`](/Dockerfile) using the command:

```
docker build -t aclconfsite .
```

where `aclconfsite` is the docker tag for our image. After that command completes, you can use this newly created image to run the website locally at `http://localhost:4000` using the command:

```
docker run --rm -p 4000:4000 -v $(pwd):/srv/jekyll aclconfsite
```

