// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";


contract Deed_Box is Ownable {
    uint256 private value;

    event valueChange (uint256 newvalue);

    function storeValue (uint256 newValue) public onlyOwner {
        value = newValue;

        emit valueChange(newValue);
    }

    function retriveValue () public view returns (uint256) {
        return value;
    }
}
