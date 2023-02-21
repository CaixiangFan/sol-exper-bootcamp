2. Do you know what this code is doing ?

copy the runtime bytecode after the constructor code is deployed in mem.


3. Explain what the following code is doing in the Yul ERC20 contract

```
function allowanceStorageOffset(account, spender) -> offset {   
  offset := accountToStorageOffset(account) 
  mstore(0, offset)   mstore(0x20, spender)
  offset := keccak256(0, 0x40) 
  }
```

calculate and return the keccak256 hash value of the account and spender.