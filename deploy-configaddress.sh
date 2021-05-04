#!/bin/bash

case $1 in

        bsctestnet)
        echo "deploy to bsctestnet"
        npx hardhat run ./scripts/deploy-configaddress.ts --network $1
        ;;

        rinkeby)
        echo "deploy to rinkeby"
        npx hardhat run ./scripts/deploy-configaddress.ts --network $1
        ;;

        *)
        echo "default deploy to ganache"
        npx hardhat run ./scripts/deploy-configaddress.ts --network ganache
        ;;
esac
