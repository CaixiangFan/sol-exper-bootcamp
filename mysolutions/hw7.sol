// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract HW7 {
    mapping(bytes => uint256) states;
    event transferOccurred(address, uint256);

    function store(bytes memory data, uint256 value) public {
        states[data] = value;
    }

    /*
    "transfer(address,uint256)"
    0xa9059cbb
    "transferFrom(address,address,uint256)"
    0x23b872dd
    */
    function getSelector(string calldata _func) external pure returns (bytes4) {
        return bytes4(keccak256(bytes(_func)));
    }

    function query(bytes memory data, function(uint256) external)
        public
        view
        returns (uint256)
    {
        return states[data];
    }

    function checkCall(bytes calldata data) external {
        bytes4 _selector;
        address _adddress;
        uint256 _value;
        (_selector, _adddress, _value) = abi.decode(
            data,
            (bytes4, address, uint256)
        );
        require(_selector == 0xa9059cbb, "the function is not ERC20 transfer");
        emit transferOccurred(_adddress, _value);
    }
}
