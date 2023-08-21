#!/usr/bin/env bash
conjure solve  monoid.essence n.param 
conjure solve -ac --number-of-solutions=all monoid.essence n.param 
find ./ -type f -name "*.solution" -delete

