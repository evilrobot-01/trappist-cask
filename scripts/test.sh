#!/bin/bash

PIT=parachains-integration-tests
PIT_PACKAGE=@parity/$PIT

# Ensure yarn available
if ! which yarn &> /dev/null
then
echo Error: could not find yarn
exit
fi

# Install parachains-integration-tests
if ! which $PIT &> /dev/null
then
echo Installing parachain integration framework...
yarn global add --silent --no-progress $PIT_PACKAGE
echo Use \'yarn global remove "$PIT_PACKAGE"\' to remove...
  if ! which $PIT &> /dev/null
  then
    echo Error: could not find \'"$PIT"\' after global install - ensure that the path reported by \'yarn global bin\' is in your PATH.
    exit
  fi
fi

# Rung integration tests
echo Running integration tests...
cd trappist || exit
parachains-integration-tests -m zombienet-test -c xcm-playground.toml -t ./integration-tests/asset-registry
cd ..