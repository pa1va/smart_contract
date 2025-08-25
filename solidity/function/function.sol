// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract FunctionIntro {
    function add(uint256 x, uint256 y) external pure returns (uint256 result) {
        unchecked {
            result = x + y;
        }
    }

    error UnderflowError();

    function sub(uint256 x, uint256 y) external pure returns (uint256 result) {
        if (y > x) revert UnderflowError();
        unchecked {
            result = x - y;
        }
    }
}
