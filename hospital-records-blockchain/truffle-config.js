module.exports = {
  compilers: {
    solc: {
      version: "0.8.17"
    }
  },
  networks: {
    ganache: {
      host: "127.0.0.1",
      port: 7545,
      network_id: "*"
    }
  }
};
