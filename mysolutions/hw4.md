1. Start a new project using the [Solidity Template](https://github.com/PaulRBerg/hardhat-template).
   
   a. go to the template repo.

   b. Use this template -> Create a new repository.

   c. Clone to local or cloud environment.

   d. ``yarn install`` to install all dependencies.

   e. Config ``.env`` finel and ``hardhat.config.ts``.

2. Make a fork of mainnet from the command line.

   Open a terminal and execute the following command to fork the mainnet:

   ```
   npx hardhat node --fork https://mainnet.infura.io/v3/myInfuraAPIkey


   Started HTTP and WebSocket JSON-RPC server at http://127.0.0.1:8545/

    Accounts
    ========
    Account #0: 0x0160ceDB6cae2EAd33F5c2fa25FE078485a07b63 (10000 ETH)

    Account #1: 0x47fC8B9b6AF4f7c159652F2a4CF6871424eED7e1 (10000 ETH)

    Account #2: 0xFa4270bf86D4c092F03c768D474D2193b9A39edd (10000 ETH)

    Account #3: 0x2c45CbE25efD7442AAbbAF6633A88Ef4E139586d (10000 ETH)

    Account #4: 0x0c1e5E64F3d3a722AB2D3A562C0eb656ae700d46 (10000 ETH)

    Account #5: 0x6552f64c5ccc5b595627712ca346355F1562Fa4a (10000 ETH)

    Account #6: 0x209f4Ef5E7D59E6D982d4beb1dc7952234D399FE (10000 ETH)

    Account #7: 0x3944049e0Ff72A56d55DF3a05B17a73d711D4551 (10000 ETH)

    Account #8: 0xC9C3089e42E386c67Ef6544a00Bbcc2BbE6b2bBB (10000 ETH)

    Account #9: 0x4e2B65185BaD4424850A11cCa1B74174822DC2de (10000 ETH)

    Account #10: 0xDB2781673aA4278C9b260A95301a70d74A7204Be (10000 ETH)

    Account #11: 0x194919DaE9048cDAfC01C51e725a5945FC596368 (10000 ETH)

    Account #12: 0x085d5c98D721A8Fd2E0558bc8dAfa874e4eaf9B3 (10000 ETH)

    Account #13: 0x747Ae77d47665f0F0F176d6C6b5C4940632D5751 (10000 ETH)

    Account #14: 0xcA7dA19f854359CAbAa90AE52EaE093fc06d6414 (10000 ETH)

    Account #15: 0x1cAEFCC1B75D29bFE161364f66C0539b226bE89f (10000 ETH)

    Account #16: 0x570A3E824e2313D31aeC192fb5A6be8335eB1E08 (10000 ETH)

    Account #17: 0x21621f1c6b3E6f01c71B748c670E7E1F2efaa286 (10000 ETH)

    Account #18: 0xb774256684ef3d60e705c6e509FB7Cf5100fF96C (10000 ETH)

    Account #19: 0x838F27D4a884dD479D39EE8B999baB10d8F849aF (10000 ETH)
   ```

3. Query the mainnet using the command line to retrieve a property such as latest block number.

   Open another terminal and execute the following command to open a Hardhat consol:

   ```
       npx hardhat console
   ```

   Then, query the blockchain properties using ethers.

   ```
   > const latest_block = await ethers.provider.getBlock("latest");
   undefined
   > latest_block.number
   16636484
   ```
