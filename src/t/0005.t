#!/usr/bin/env bash

( D="A simple TAP thing")
plan(){ ( D="The plan"; echo -n "1..${1}";shift; test "${1}" == "todo"&& echo -n " $*"; echo)}
ok(){ ( D="Positive frame"; test ${1} -ne ${2}&& echo -n "not ";shift;shift;echo "ok $*")}
not(){ ( D="Negative test frame"; shift; test ${1} -eq ${2}&& echo -n "not ";shift;shift;echo "ok $*")}

plan 4
ok 1 1
not ok 2 3 "# Here, this now fails"
ok 2 2
ok 4 4
