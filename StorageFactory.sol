// SPDX-License-Identifier: MIT 

pragma solidity ^0.8.12;

import "./simplestorage.sol"; 

contract StorageFactory {
    
    simplestorage[] public simpleStorageArray;
    
    function createsimplestoragesontract() public {
        simplestorage simpleStorage = new simplestorage();
        simpleStorageArray.push(simpleStorage);
    }
    
    function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public {
        // Address 
        // ABI 
        // simplestorage(address(simplestorageArray[_simplestorageIndex])).store(_simplestorageNumber);
        simpleStorageArray[_simpleStorageIndex].store(_simpleStorageNumber);
    }
    
    function sfGet(uint256 _simpleStorageIndex) public view returns (uint256) {
        // return SimpleStorage(address(simpleStorageArray[_simpleStorageIndex])).retrieve();
        return simpleStorageArray[_simpleStorageIndex].retrieve();
    }
}
