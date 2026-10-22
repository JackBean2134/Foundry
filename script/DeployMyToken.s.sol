// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

import "forge-std/Script.sol";
import "../src/MyTokenERC20.sol";

contract DeployMyToken is Script {
    function run() external {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);

        new MyToken("MyToken", "MTK");

        vm.stopBroadcast();
    }
}
