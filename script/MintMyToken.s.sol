// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

import "forge-std/Script.sol";

interface IMyToken {
    function mintOnce() external;
}

contract MintMyToken is Script {
    function run() external {
        address token = vm.envAddress("TOKEN_ADDRESS");
        vm.startBroadcast(); // 由命令行 --keystore 传入签名账户，必须是 deployer
        IMyToken(token).mintOnce();
        vm.stopBroadcast();
    }
}
