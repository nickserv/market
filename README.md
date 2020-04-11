# [New Horizons Market](https://nhmarket.herokuapp.com/)

[![Build Status](https://travis-ci.com/nickmccurdy/market.svg?token=2YpiqRLGxdsv1ho7eXeu&branch=master)](https://travis-ci.com/nickmccurdy/market)

Trading service for [Animal Crossing: New Horizons](https://www.animal-crossing.com/new-horizons/)

## Status

The [MVP](https://github.com/nickmccurdy/market/milestone/1) is being developed, and the current `master` branch is autodeployed. UX and DB designs are in progress.

## Stack

Ruby on Rails. A single-page React frontend may be implemented in the future depending on the complexity and performance of the UI.

## Setup

1. Install Ruby 2.6.3, Node, Yarn, and PostgreSQL
1. `bundle`
1. `yarn`
1. `rake db:create db:migrate`
1. `rails server`

## Testing

For linting and faster tests:

`rake`

For slower system tests:

`rake test:system`

## Deployment

This Rails app is designed to be deployed on Heroku's default Ruby buildpack. `master` will be auto-deployed, but you can also host your own fork with the free tier.
