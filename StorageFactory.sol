// SPDX-License-Identifier: MIT 

pragma solidity ^0.8.12;

import "./simplestorage.sol"; 

contract StorageFactory {
    
    simplestorage[] public simpleStorageArray;
    
    function createSimpleStorageContract() public {
        simplestorage simpleStorage = new simplestorage();
        simpleStorageArray.push(simpleStorage);
    }
    
    function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public {
        // need Address + ABI 
        simpleStorageArray[_simpleStorageIndex].store(_simpleStorageNumber);
    }
    
    function sfGet(uint256 _simpleStorageIndex) public view returns (uint256) {
        return simpleStorageArray[_simpleStorageIndex].retrieve();
    }
}
