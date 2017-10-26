#!/usr/bin/env bash

# start provider server
pact/bin/rackup script/provider-config.ru -p 9292 &
provider_pid="$!"

# verify pact
pact/bin/pact-provider-verifier verify --pact-urls script/consumer-interaction.json --provider-base-url http://localhost:9292

# stop provider server
kill -9 $provider_pid
