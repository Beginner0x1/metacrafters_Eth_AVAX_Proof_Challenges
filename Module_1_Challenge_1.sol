// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract AdminOnlyContract {
    address public admin;

    constructor() {
        admin = msg.sender; // The creator of the contract is the initial admin
    }

    modifier onlyAdmin() {
        require(msg.sender == admin, "Only admin can call this function");
        _;
    }

    function changeAdmin(address newAdmin) public onlyAdmin {
        admin = newAdmin;
    }

    function adminFunction() public onlyAdmin {
        // This function can only be called by the admin
        // Add your logic here
    }
}

