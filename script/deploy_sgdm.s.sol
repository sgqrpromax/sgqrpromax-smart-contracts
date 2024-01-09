// SPDX-License-Identifier: Proprietary

pragma solidity 0.8.22;

import {Script} from "forge-std/Script.sol";
import {sgdm} from "../src/sgdm.sol";

contract DeploySgdm is Script {
    function run() external returns (address) {
        vm.startBroadcast();
        sgdm sgdM = new sgdm(address(this), address(this), address(this), address(this)); // replace address(this) with address of stablecoin, uen_management & admin contract & whitelist
        vm.stopBroadcast();
        return address(sgdM);
    }
}
