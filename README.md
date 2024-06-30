## ETH_AVAX_Proof-Intermediate-Project 4

## Description
In this project I have created a NFT token called DegenToken as per the following assessment.


Your task is to create a ERC20 token and deploy it on the Avalanche network for Degen Gaming. The smart contract should have the following functionality:
+ Minting new tokens: The platform should be able to create new tokens and distribute them to players as rewards. Only the owner can mint tokens.
+ Transferring tokens: Players should be able to transfer their tokens to others.
+ Redeeming tokens: Players should be able to redeem their tokens for items in the in-game store.
+ Checking token balance: Players should be able to check their token balance at any time.
+ Burning tokens: Anyone should be able to burn tokens, that they own, that are no longer needed.



## Getting Started

### Installing

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix 
website at https://remix.ethereum.org/. Once you are on the Remix website, create a new file by 
clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension. Copy and paste
the code is main.sol file into the newly created file. Next from the sidebar go the the compiler tab
and compile the contract. Finally in the deploy tab, deploy the smart contract and interact with it

### Executing program

The code can be tested at remix. To deploy to the Avalanche Fuji Network you will need a
web3 wallet (e.g. Metamask).
1. At the very top of the deploy tab in remix, change the environment to `Injected Provider` and
it will allow you to connect with your wallet.
2. Next it will try to deploy the contract to the testnet using your wallet. 
3. After confirming the transaction you can check the transaction block on snowtrace and even check out your contract there.
4. Finally copy the address of your deployed contract and paste it in remix in the deploy tab.
5. Now you can try executing the functions from your smart contract on the testnet. Every time 
you will execute a function that required gas, it will open metamask to confirm the transaction.

## License

This project is unlicensed.
