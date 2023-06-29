// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;


contract FunctionsandErrors {
    uint public balance;

    function deposit(uint amount) public {
        require(amount > 0, "Amount must be greater than zero");
        balance += amount;
    }

    function withdraw(uint amount) public {
        require(amount <= balance, "Insufficient balance");
        balance -= amount;
    }

    function divide(uint numerator, uint denominator) public pure returns (uint) {
        require(denominator != 0, "Denominator cannot be zero");
        return numerator / denominator;
    }

    function multiply(uint a, uint b) public pure returns (uint) {
        uint result = a * b;
        assert(result / a == b);  // Using assert to verify multiplication result
        return result;
    }


  function triggerRevert(uint number) public {
        if (number == 0) {
            revert("Number cannot be zero");
        }

        balance += number;
      
    }

}

