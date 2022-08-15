# README

Back-End Challenge 20210221

This is a Ruby on Rails app build to meet the needs of Coodesh Back-End Challenge 20210221

# 1 - CRON JOB

Using the "whenever" gem the job "rails batch:get_new_flights" is sceduled daily (see scedule.rb)

This job accesses the API of thespacedevs.com fetching the latests 10 flights.

Flights are stored in the Launchers table of a Postgresql DB. The Unique id of each flight, status and flightdata is stored along with the time/date of the data being stored.

A test for this job is in specs/flights_api_client_spec.rb

# Model

Test for the model are in specs/models/launcher_spec.rb

# API

Via an API ( at /api/v1/Launchers) the data in the DB can be accessed and manipulated

Tests for the API are in specs/launchers_request_spec.rb

