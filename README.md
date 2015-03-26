# warmup_gsoc

Warm Up Tasks for the GSOC =D

[![Build Status](https://travis-ci.org/thiagovsk/warmup_gsoc.svg?branch=master)](https://travis-ci.org/thiagovsk/warmup_gsoc)

## Installation

Is very simple, if you rave ruby:

```
gem install chef --no-ri --no-rdoc
```

## With Vagrant

Just Install Vagrant + Virtualbox

- Vagrant:

```
sudo apt-get install vagrant

```
- Virtualbox

```
sudo apt-get install virtualbox

```
- And

```
vagrant up
```

# Running tests

- For running tests :

```
bundle install
rspec cookbooks/basics/spec/default_spec.rb  --color
```

- See more in [ChefSpec Documentation](https://docs.chef.io/chefspec.html)
