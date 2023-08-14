// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import {ERC1155URIStorageUpgradeable} from
  'lib/openzeppelin-contracts-upgradeable/contracts/token/ERC1155/extensions/ERC1155URIStorageUpgradeable.sol';

// see https://docs.openzeppelin.com/contracts/3.x/erc1155
contract CErc1155Sample is ERC1155URIStorageUpgradeable {
  uint256 public constant TOP = 1;
  uint256 public constant LEG = 2;

  function __CErc1155Sample_init() public initializer {
    __ERC1155_init('');
    _mint(msg.sender, TOP, 1, '');
    _mint(msg.sender, LEG, 2, '');
  }
}
