// SPDX-License-Identifier: Proprietary

pragma solidity 0.8.22;

import {Script} from "forge-std/Script.sol";
import {whitelist} from "../src/whitelist.sol";

contract DeployWhitelist is Script {
    function run() external returns (address) {
        vm.startBroadcast();
        whitelist whiteList = new whitelist(address(this), address(this)); // replace address(this) with address of uen_management & admin contract
        vm.stopBroadcast();
        return address(whiteList);
    }
}
