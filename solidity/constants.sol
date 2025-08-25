// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract Constants {
    address public constant MY_ADDRESS =
        0x777788889999AaAAbBbbCcccddDdeeeEfFFfCcCc;
    uint256 public constant MY_UINT = 123;

    function getMyUint() public pure returns (uint256) {
        return MY_UINT;
    }

    function isMyAddress(address _addr) public pure returns (bool) {
        return _addr == MY_ADDRESS;
    }
}
