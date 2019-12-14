#!/bin/bash
read -p "Add the ip of chat server :>>" ip
read -p "Add opened port of chat server :>>" port
nc $ip $port
