#!/usr/bin/env bash

nohup python3 run_flask.py > /dev/null &echo $! > ./flask.pid &

bash
