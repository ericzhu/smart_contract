// SPDX-License-Identifier: MIT
pragma solidity >0.7.0 <0.9.0;

contract SimpleStorage {

    uint256 private storageNumber;

    function store(uint256 _storageNumber) public {
        storageNumber = _storageNumber;
    }

    function retrieve() public view returns (uint256) {
        return storageNumber;
    }

}

contract SimpleStorage1 {
    
}

contract SimpleStorage2 {
    
}