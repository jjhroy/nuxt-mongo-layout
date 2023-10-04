import fs from 'fs'
import path from 'path'

try {
  const packageFilePath = path.join('package.json')
  const content = fs.readFileSync(packageFilePath, 'utf-8')
  const packageJson = JSON.parse(content)
  packageJson.version = packageJson.version.replace(/\.(\d+)$/, '.x')
  packageJson.version = packageJson.version.replace('x', +RegExp.$1 + 1)
  // console.log(packageJson.version);
  fs.writeFileSync(packageFilePath, JSON.stringify(packageJson), 'utf-8')
} catch (error) {
  console.log(error)
}
