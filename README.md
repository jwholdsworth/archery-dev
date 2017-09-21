# README

## Requirements

* docker
* docker-compose
* make

## Setup Instructions

1. Clone this repository (`git clone git@github.com:infinityworks/archery-dev.git`)
1. Clone the `archery-site` repository (`git clone git@github.com:infinityworks/archery-site.git`)
1. `cd archery-dev`
1. `make`

Your site is now running on http://localhost:8080/

## Commands

* `make mysql-connect` Logs you into MySQL
* `make redis-connect` Logs you into Redis
* `make test` Runs your tests
* `make data` Resets your local MySQL database with known good data
* `make tail` Reads out your application log file in real-time

## Assumptions made

1. The application is in a repo called `archery-site`, and is in a sibling directory to this one.
1. The application has a Makefile with a target of `test` for running the tests.
1. The application has a Dockerfile
1. Ports 8080, 3306 and 6379 are all available on your local machine (i.e. no web proxies, MySQL or Redis servers are running locally).
