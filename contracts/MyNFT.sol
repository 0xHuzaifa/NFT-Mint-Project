// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.0 < 0.9.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

contract MyNFT is ERC721URIStorage , Ownable {
    constructor() ERC721("Huzaifa", "HUZI") {}

    using Counters for Counters.Counter;

    Counters.Counter private tokenId;

    function mintNFT(address receipent, string memory tokenURI) public onlyOwner returns(uint) {
        tokenId.increment();

        uint newItemId = tokenId.current();
        _mint(receipent, newItemId);
        _setTokenURI(newItemId, tokenURI);

        return newItemId;
    }
} 