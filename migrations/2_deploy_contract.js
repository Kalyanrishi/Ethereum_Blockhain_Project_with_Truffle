// migrations/2_deploy_contract.js

const Identity = artifacts.require("Identity");

module.exports = function (deployer) {
  deployer.deploy(Identity);
};
