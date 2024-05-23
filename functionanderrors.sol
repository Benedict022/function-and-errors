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
