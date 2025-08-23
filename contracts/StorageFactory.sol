// SPDX-License-Identifier: MIT
pragma solidity >0.7.0 <0.9.0;

import {SimpleStorage} from "contracts/SimpleStorage.sol";

contract StorageFactory {
    SimpleStorage[] public simpleStorageContractList;

    function createSimpleStorage() public {
        SimpleStorage newSimpleStorageContract = new SimpleStorage();
        simpleStorageContractList.push(newSimpleStorageContract);
    }

    function sfStore(uint256 _contractIndex, uint256 _simpleStorageNumber) public {
        simpleStorageContractList[_contractIndex].store(_simpleStorageNumber);
    }

    function sfRetrieveStorageNumber(uint256 _contractIndex) public view returns (uint256) {
        return simpleStorageContractList[_contractIndex].retrieve();
    }
}