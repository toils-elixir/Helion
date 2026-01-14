// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract BlockReader {
    function getBlockNumber() external view returns (uint256) {
        return block.number;
    }
}
