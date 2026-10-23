// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MyToken is ERC20 {
    address public immutable owner;

    constructor(string memory name_, string memory symbol_) ERC20(name_, symbol_) {
        owner = msg.sender;
    }

    function mintTotal() external {
        require(msg.sender == owner, "Only owner can mint");
        // 100万代币
        _mint(msg.sender, 1_000_000 * 1e18);
    }
}
