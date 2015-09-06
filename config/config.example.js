var path = require('path'),
    rootPath = path.normalize(__dirname + '/..'),
    env = process.env.NODE_ENV || 'development';

var config = {
  development: {
    root: rootPath,
    app: {
      name: 'deep'
    },
    port: 3000,
    db: 'mongodb://localhost/deep-development'
  },

  test: {
    root: rootPath,
    app: {
      name: 'deep'
    },
    port: 3000,
    db: 'mongodb://localhost/deep-test'
  },

  production: {
    root: rootPath,
    app: {
      name: 'deep'
    },
    port: 3000,
    db: 'mongodb://localhost/deep-production'
  }
};

module.exports = config[env];
