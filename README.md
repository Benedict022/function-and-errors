# function-and-errors

FUNCTIONS AND ERRORS
This assessment tackles the require, assert and the revert in Module 1 of Avalanche in Metacraters.

# DESCRIPTION
Require is a term for a requirement that must be fulfilled for the function to proceed. If the condition evaluates to false, the function will rerun with all state alterations made during the execution undone. Assert: This verb is used to look for circumstances that don't have to be evaluated as false. It is usually used to look for internal problems or static circumstances. To reverse the current transaction and display an optional error message, use the "Revert" command.

# GETTING STARTED
To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a functionanderrors.sol extension (e.g., functionanderrors.sol). Copy and paste the following code into the file:

// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

contract FunctionandError {
    uint256 public Num;

    function RequireFunction(uint256 _number) external {
        require(_number > 0, "Can't input Zero");

        Num = _number;
    }

    function AssertFunction(uint256 _number) external {
        assert(_number != 23);

        Num = _number;
    }

    function RevertFunction(uint256 _number) external {
        if (_number == 666) {
            revert("Unsafe input, reverting transaction");
        }

        Num = _number;
    }
}

# AUTHOR
Alcantara, John Benedict G. Bsit 3.1
