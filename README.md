# function-and-errors

FUNCTIONS AND ERRORS
This assessment tackles the require, assert and the revert in Module 1 of Avalanche in Metacraters.

# DESCRIPTION
Require is a term for a requirement that must be fulfilled for the function to proceed. If the condition evaluates to false, the function will rerun with all state alterations made during the execution undone. Assert: This verb is used to look for circumstances that don't have to be evaluated as false. It is usually used to look for internal problems or static circumstances. To reverse the current transaction and display an optional error message, use the "Revert" command.

# GETTING STARTED
To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a functionanderrors.sol extension (e.g., functionanderrors.sol). Copy and paste the following code into the file:

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract alcantara {

    
    string public TokenName = "BurgerMc";
    string public TokenSymbol = "Bm";
    uint256 public supply = 0;

    
    mapping(address => uint) public balances;

    
    function take(address _address, uint _value) public {
        supply == balances[_address];

        require(_value > 0, "Value must be greater than 0");

        supply += _value;
        balances[_address] += _value;
        
        assert(balances[_address] == supply); 
        supply == 0; 
    }

    
    function give(address _address, uint _value) public {
        supply == balances[_address];

        if (supply < _value) {
            revert("Not enough balance to give");
        }
        
        supply -= _value;
        balances[_address] -= _value;

        assert(balances[_address] == supply); 
        supply == 0; 
    }

}

# AUTHOR
Alcantara, John Benedict G. Bsit 3.1
