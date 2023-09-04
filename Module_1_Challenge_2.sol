// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BaseContract {
    uint256 public stateVariable;

    // Constructor to initialize the state variable
    constructor(uint256 initialValue) {
        stateVariable = initialValue;
    }

    function getState() public view returns (uint256) {
        return stateVariable;
    }

    function pureFunction(uint256 a, uint256 b) public pure returns (uint256) {
        return a + b;
    }

    function payableFunction() public payable {
        // This function can receive Ether
    }
}

contract DerivedContract is BaseContract {
    // Constructor that calls the parent constructor with an initial value
    constructor(uint256 initialValue) BaseContract(initialValue) {}

    function getStateFromBase() public view returns (uint256) {
        // Access the state variable from the parent contract
        return stateVariable;
    }

    function pureFunctionFromBase(uint256 a, uint256 b) public pure returns (uint256) {
        // Call the pure function from the parent contract
        return pureFunction(a, b);
    }

    function payableFunctionFromBase() public payable {
        // Call the payable function from the parent contract
        payableFunction();
    }
}
