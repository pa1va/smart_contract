// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract VariablesExample {
    string public text = "Hello";
    uint256 public num = 123;

    function showVariables() public view returns (
        string memory stateText,
        uint256 stateNum,
        uint256 localVar,
        uint256 blockTimestamp,
        uint256 blockNumber,
        address sender
    ) {
        uint256 i = 456;

        uint256 timestamp = block.timestamp;
        uint256 number = block.number;
        address caller = msg.sender;

        return (text, num, i, timestamp, number, caller);
    }
}
