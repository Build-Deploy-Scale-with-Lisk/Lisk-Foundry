// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {LearningHub} from "../src/LearningHub.sol"; 

contract LearningHubScript is Script {
    function setUp() public {}

    function run() public {
        vm.startBroadcast();
        
        
        LearningHub learningHub = new LearningHub();

        console.log("LearningHub deployed at:", address(learningHub));

        vm.stopBroadcast();
    }
}

 