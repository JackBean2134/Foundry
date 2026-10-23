// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

import "forge-std/Script.sol";
import "../src/MyTokenERC20.sol";

contract DeployMyToken is Script {
    function run() external {
        vm.startBroadcast(); // 不带参数，由命令行传入账户签名
        new MyToken("MyToken", "MTK");
        vm.stopBroadcast();
    }
}
