// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import {Script} from "forge-std/Script.sol";
import {console} from "forge-std/console.sol"; // Import console for logging
import {RewardToken} from "../src/RewardToken.sol";
import {LearningHub} from "../src/LearningHub.sol"; // Assuming DappRewards is in src folder

contract DeployScript is Script {
    function run() public {
        // Start broadcasting transactions
        vm.startBroadcast();

        // Deploy the RewardToken contract
        RewardToken rewardToken = new RewardToken();

        // Deploy the DappRewards contract with RewardToken's address as a constructor argument
        LearningHub learningHub = new LearningHub(rewardToken);

        // Transfer ownership of RewardToken to the DappRewards contract
        rewardToken.transferOwnership(address(learningHub));

        // Logging the contract addresses
        console.log("RewardToken deployed to:", address(rewardToken));
        console.log("LearningHub deployed to:", address(learningHub));

        // End broadcasting transactions
        vm.stopBroadcast();
    }
}
