// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/**
 * @title RemoveItems
 * @dev Delete element in a dynamic array
 * @custom:dev-run-script ./scripts/deploy_with_ethers.ts
 */
contract RemoveItems {
    uint256[] TestArray;

    constructor() {
        for (uint256 i = 0; i < 12; i++) {
            TestArray.push(i);
        }
    }

    /**
     * @dev Delete an item from the array based on given index number, starting from 1
     * @param index num value to delete
     */
    function remove(uint256 index) public {
        for (uint256 i = index; i < TestArray.length - 1; i++) {
            TestArray[i] = TestArray[i + 1];
        }
        TestArray.pop();
    }

    function getter() public view returns (uint256[] memory) {
        return TestArray;
    }

    /**
     * @dev Delete an item from the array based on given index number
     * @param index num value to delete, must be non-gegative integer and less than the array length
     */
    function removeNoOrder(uint256 index) public {
      require(index >= 0 && index < TestArray.length, "Invalid removal index");
      TestArray[index] = TestArray[TestArray.length - 1];
      TestArray.pop();
  }

}
