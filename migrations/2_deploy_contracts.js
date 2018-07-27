var RiskxToken = artifacts.require("./RiskxToken.sol");

module.exports = function(deployer) {
  deployer.deploy(RiskxToken, 600000000);
};
