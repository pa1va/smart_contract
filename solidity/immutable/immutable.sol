// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract Immutable {
    address public immutable myAddr;
    uint256 public immutable myUint;

    event Initialized(address indexed sender, uint256 myUint);

    constructor(uint256 _myUint) {
        require(_myUint > 0, "myUint must be greater than 0");
        myAddr = msg.sender;
        myUint = _myUint;
        emit Initialized(myAddr, myUint);
    }

    function isDeployer(address _addr) public view returns (bool) {
        return _addr == myAddr;
    }
}
