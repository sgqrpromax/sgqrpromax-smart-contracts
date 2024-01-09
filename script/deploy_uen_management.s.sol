// SPDX-License-Identifier: Proprietary

pragma solidity 0.8.22;

import {Script} from "forge-std/Script.sol";
import {uen_management} from "../src/uen_management.sol";

contract DeployUenManagement is Script {
    function run() external returns (address) {
        vm.startBroadcast();
        uen_management uenManagement = new uen_management(address(this)); // replace address(this) with address of admin contract
        vm.stopBroadcast();
        return address(uenManagement);
    }
}
