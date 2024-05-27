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