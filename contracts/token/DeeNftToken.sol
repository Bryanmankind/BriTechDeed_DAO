// SPDX-License-Identifier: MIT

pragma solidity ^0.8.24;

import {ERC721} from "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract DeeNftToken is ERC721 {
    uint256 public payable owner;

    constructor () ERC721 ("DeeNft", "DEED") {
        owner = payable(msg.sender)
    }

}