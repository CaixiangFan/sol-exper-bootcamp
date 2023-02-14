// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract ExploreMem {
    string[] names;

    constructor() {
        names.push("name");
    }

    function addName(string memory name) public {
        bytes memory nameBytes = bytes(name);
        require(nameBytes.length != 0, "Empty name");
        names.push(name);
    }

    function viewName(uint256 index) public view returns (string memory) {
        require(index >= 0 && index < names.length, "Invalid name index!");
        return names[index];
    }

    function vewNames() public view returns (string[] memory) {
        return names;
    }
}
