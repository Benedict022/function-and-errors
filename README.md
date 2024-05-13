# function-and-errors

FUNCTIONS AND ERRORS
This assessment tackles the require, assert and the revert in Module 1 of Avalanche in Metacraters.

# DESCRIPTION
Require - is a condition that needs to be met in order for the function to continue. The function will execute again and any state modifications performed during the execution will be undone if the condition evaluates to false. Assert - It's used to seek for conditions that need never to evaluate to untrue. Typically, it's utilized for checking for static conditions or internal errors. Revert - is used to revert the current transaction with an optional error message.

# GETTING STARTED
To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a functionanderrors.sol extension (e.g., .sol). Copy and paste the following code into the file:

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

# AUTHOR
Alcantara, John Benedict G. Bsit 3.1
