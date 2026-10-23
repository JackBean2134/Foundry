// SPDX-License-Identifier: MIT
pragma solidity 0.8.25;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MyToken is ERC20 {
    address public immutable deployer;
    constructor(string memory name_, string memory symbol_) ERC20(name_, symbol_) {
        deployer = msg.sender;
    }

    function mintOnce() external {
        require(msg.sender == deployer, "only deployer");
        _mint(msg.sender, 1_000_000 * 10 ** decimals());
    }
}
