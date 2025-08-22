// SPDX-License-Identifier: MIT
pragma solidity >0.7.0 <0.9.0;

import {SimpleStorage, SimpleStorage1} from "contracts/SimpleStorage.sol";

contract StorageFactory {
    SimpleStorage public simpleStorage;
    SimpleStorage1 public simpleStorage1;

    function createSimpleStorage() public {
        simpleStorage = new SimpleStorage();
        simpleStorage1 = new SimpleStorage1();
    }
}