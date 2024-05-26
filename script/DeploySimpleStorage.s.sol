// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {Script} from "forge-std/Script.sol"; //the forge-std is the forge standard library, Script is used for solidity scripting
import {SimpleStorage} from "../src/SimpleStorage.sol"; //DeploySimpleStorage needs to know about our SimpleStorage contract

contract DeploySimpleStorage is Script {
    function run() external returns (SimpleStorage) {
        vm.startBroadcast(); //start broadcasting the deployment

        SimpleStorage simpleStorage = new SimpleStorage(); //creates a new contract

        vm.stopBroadcast();
        return simpleStorage;
    }
}
