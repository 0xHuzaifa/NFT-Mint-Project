async function main() {
  const MyNFT = await ethers.getContractFactory("MyNFT");

  const myNFT = await MyNFT.deploy();

  console.log("Contract Address", myNFT.address);
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });

//0x44CFE80381937ee4C5e444a1D83d7c1c9bd6ECEE