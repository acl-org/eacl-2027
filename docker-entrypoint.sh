#!/bin/bash
trap 'kill %1; exit 0' INT TERM
rm -f Gemfile.lock
bundle install
bundle exec jekyll serve --host 0.0.0.0 &
wait
