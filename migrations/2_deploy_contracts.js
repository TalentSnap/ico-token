const TSCToken = artifacts.require("TSCToken");

module.exports = function(deployer) {
    deployer.deploy(TSCToken).then(() => {
        console.log("TSCToken contract address is: ", TSCToken.address)
    });
}