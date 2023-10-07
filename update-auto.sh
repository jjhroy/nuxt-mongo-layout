echo "🛸 开始执行组件自动升级和推送脚本"
node release.js
echo "🛰️ 自动升级版本号成功"
npx prettier -w package.json
echo "🚀 package.json 美化完成"
echo "🚁 开始 npm 发布新版本"
npm publish --registry https://registry.npmjs.org
echo "🛩️ npm 发布新版本成功"
echo "🚟 打包最新的scss为css"
npx sass src/assets/global.scss global.css --no-source-map
echo "🚠 打包完成"
echo "✈️ 开始组件 git 推送"
git add .
echo "🛫 执行 git 提交"
git commit -m "fix: 版本升级和样式更新"
echo "🛫 执行 git 推送"
git push
echo "🛬 推送更新成功"
