# Sample NFT Mint Project

**Packages**

```shell
npm install --save-dev hardhat
npm install @openzeppelin/contracts
npm install dotnet --save
npm install --save-dev @nomiclabs/hardhat-ethers 'ethers@^5.0.0'
npm install @alch/alchemy-web3
```

The Simple NFT Mint Project showcases a seamless process of creating and deploying NFTs on the Goerli test network using a combination of Solidity, Hardhat, and Alchemy with the assistance of the Ether.js and Web3.js libraries, along with Pinata for IPFS storage of image metadata. 

In the provided Solidity smart contract file, "MyNFT.sol," we define a custom ERC721 token named "Huzaifa" with the symbol "HUZI." The contract extends ERC721URIStorage to store unique token URIs, making each NFT distinct. It also inherits from the Ownable contract, ensuring that only the owner can mint new NFTs. The mintNFT function allows the owner to mint NFTs, increment the token ID, set the token URI, and return the newly created NFT ID.

The deploy file initiates the deployment process of the MyNFT contract onto the Goerli test network, and it logs the contract's address upon successful deployment.

The Hardhat configuration file sets up the development environment, connecting to the Goerli test network via Alchemy using the provided API URL and private key. It also defines the Solidity compiler version and specifies the default network for development.

The Mint-NFT.js script leverages Alchemy's Web3 library to interact with the deployed contract. It utilizes your public and private keys to sign and send transactions. The mintNFT function takes a tokenURI argument and creates a transaction to mint a new NFT, using the contract's mintNFT method, and sends it to the Goerli test network. It handles transaction signing and submission, logging the transaction hash for reference.

Lastly, Pinata is used to store the image metadata for the NFTs, ensuring that the associated data is securely hosted on IPFS, providing decentralized access to the NFTs' content.

Overall, this project effectively demonstrates a streamlined process for creating and deploying NFTs on a test network, integrating essential components such as contract development, deployment, transaction management, and IPFS storage for metadata.


![NFT-Mint Project](https://github.com/huzaafi/NFT-Mint-Project/assets/143804804/da5d7c21-8d41-4bcc-ab3a-19079cebf1b1)
