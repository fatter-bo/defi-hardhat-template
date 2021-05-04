#!/bin/bash


#truffle compile

#truffle network --clean
#truffle migrate


#sed -i -e   's/0x2E645469f354BB4F5c8a05B3b30A929361cf77eC/<CONTRACT_ADDRESS>/g'  subgraph.yaml

#sh compile.sh

#yarn 

yarn graph:codegen

case $1 in

        ganache)
        echo "init to ganache"
        yarn hardhat run ./scripts/change-subgraph.ts --network $1
        yarn graph:create-local
        yarn graph:deploy-local
        ;;

        rinkeby)
        echo "deploy to rinkeby"
        yarn hardhat run ./scripts/change-subgraph.ts --network $1
        yarn graph:create-$1
        yarn graph:deploy-$1
        ;;

        *)
        echo "default deploy to bsctestnet"
        yarn hardhat run ./scripts/change-subgraph.ts --network bsctestnet
        yarn graph:create-bsctest
        yarn graph:deploy-bsctest
        ;;
esac
