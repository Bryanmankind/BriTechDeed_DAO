// SPDX-License-Identifier: MIT

pragma solidity ^0.8.24

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract DeedGovToken is ERC20 {
    uint256 public payable owner;
    
    constructor () IERC20 ('Deed Token', "DEED" ){
        owner = payable(msg.sender);
        _mint(owner, 1000000000 * (10 ** uint256(decimal())));
    }
}
