# Trappist Launcher
A few shell scripts and Git submodules to easily build and launch Trappist locally. 

## Prerequisites:
- Install required packages and Rust as per https://docs.substrate.io/install
- Install `yarn`
- Clone this repository, making sure to initialise the submodules: `git clone --recursive https://github.com/evilrobot-01/trappist`

## Build
Build the `polkadot` (relay chain), `polkadot-parachain` (asset reserve), `trappist` and `base` binaries using the `build` script:
```
./scripts/build.sh
```

## Launch Network
Launch a local network (`rococo-local`, `statemine-local`, `trappist` and `base` parachains) using the `launch` script. 
You can then use the links in the node information section in the resulting terminal output to connect to the running nodes.
```
./scripts/launch.sh
``` 

## Run Integration Tests
Run the parachain integration tests using the `test` script:
```
./scripts/test.sh
``` 