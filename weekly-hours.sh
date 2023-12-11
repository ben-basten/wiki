#!/bin/bash

ACTIVEWEEK=$(ls -1A docs/daily | tail -1)

echo "ADDING WEEKLY HOURS: ${ACTIVEWEEK}"

awk '/hours/' docs/daily/${ACTIVEWEEK}/* | awk 'BEGIN{sum=0}; sum+=$1; END{print sum " hours total"}'