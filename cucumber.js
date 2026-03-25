const common = [
  '--require ./support/world.js',
  '--require ./support/hooks.js',
  '--require ./steps/**/*.js',
  '--publish-quiet',
  '--format progress',
  '--parallel 1' // keep 1 while selectors are being stabilized
].join(' ');

module.exports = {
  default: common
};

