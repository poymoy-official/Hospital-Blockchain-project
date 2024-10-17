const HospitalRecords = artifacts.require("HospitalRecords");

module.exports = function (deployer) {
  deployer.deploy(HospitalRecords, { gas: 5000000 });
};
