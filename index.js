const path = require('path')

module.exports = (robot) => {
  const scriptsPath = path.resolve(__dirname, 'src')
  robot.loadFile(scriptsPath, 'credit-card-number-generator.js')
}
