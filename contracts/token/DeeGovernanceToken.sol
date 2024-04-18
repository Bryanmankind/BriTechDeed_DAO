// SPDX-License-Identifier: MIT

pragma solidity 0.8.24;

import {ERC20Votes} from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Votes.sol";

contract DeedGovToken is ERC20Votes {
    uint256 public owner;
    
    constructor () ERC20Votes ('Deed Token', "DEED" ) {
        owner = payable(msg.sender);
        _mint(owner, 1000000000 * (10 ** uint256(decimals())));
    }

    function _afterTokenTransfer (address from, address to, uint256 amount) internal override (ERC20Votes) {
        super._afterTokenTransfer(from, to, amount);
    }

    function _mint (address to, uint256 amount) internal override (ERC20Votes) {
        super._mint(to, amount);

    }

    function _burn (address account, uint256 amount) internal override (ERC20Votes) {
        super._burn(account, amount);
    }
}
