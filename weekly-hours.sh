#!/bin/bash

ACTIVEWEEK=$(ls -l docs/daily | tail -1 | awk '{ print $10 }')

echo "ADDING WEEKLY HOURS: ${ACTIVEWEEK}"

awk '/hours/' docs/daily/${ACTIVEWEEK}/* | awk 'sum+=$1; END{print sum " hours total"}'