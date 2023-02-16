1. Look at the example of init code in today's notes.
See gist: When we do the CODECOPY operation, what are we overwriting ?
(debugging this in Remix might help here)

We are copying the contract bytecode from offset 0x27 bytes with a length of 0xB6 bytes located in `Call Data` to the `memory` offset 0x0. This overtwrites the first 182 bytes of the memory.

CODECOPY(0x00, 0x27, 0xB6) will copy 0xB6 bytes code from offset 0x27 into memory (0x0, 0xB6). The first 0x26 bytes store `constructor` which only executes once and doesn't need to be stored.

EXTCODECOPY copies code of one contract to another. It has the folowing stack inputs:
- address: 20-byte address of the contract to query.
- destOffset: byte offset in the memory where the result will be copied.
- offset: byte offset in the code to copy.
- size: byte size to copy.


2. Could the answer to Q1 allow an optimisation ?

We can optimize the code by removing unnecessary checks such as `ISZERO` given that we know what is fed to the constructor.

3. Can you trigger a revert in the init code in Remix ?

Giving a non-zero value in deploying the contract triggers a revert because the contract is not payable.

4. Write some Yul to
    1) Add 0x07 to 0x08
    2) store the result at the next free memory location.
    3) (optional) write this again in opcodes

    ```
    let result := add(0x07, 0x08);
    mstore(0x80, result);
    ```

5. Can you think of a situation where the opcode EXTCODECOPY is used ?

Proxy contract and contract upgradability.

6. Complete the assembly exercises in this repo
Exercises
If you want to use gitpod, this is the format
https://gitpod.io/#https://github.com/ExtropyIO/ExpertSolidityBootcamp