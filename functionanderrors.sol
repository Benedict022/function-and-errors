// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ErrorHandlingExample {
    uint public num;
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    function setNum(uint _num) public {
       
        require(_num != 0, "Number cannot be zero");

        num = _num;
    }

    function assertExample(uint _num) public view returns (uint) {
       
        assert(_num > 0);
        return _num;
    }

    function revertExample() public view returns (string memory) {
        
        if (msg.sender != owner) {
            revert("Only the owner can call this function");
        }

        return "Success";
    }
}