# 把组件的新版本发布到 npm 上
echo "🛸 开始执行组件自动升级和推送脚本"
node release.js
echo "🛰️ 自动升级版本号成功"
npx prettier -w package.json
echo "🚀 package.json 美化完成"
echo "🚁 开始 npm 发布新版本"
npm publish --registry https://registry.npmjs.org
echo "🛩️ npm 发布新版本成功"
# 把新的 css 文件上传到cdn
echo "🚟 把最新的布局 scss 文件为 css 文件"
npx sass src/assets/global.scss src/runtime/global.css --no-source-map
echo "🚠 布局 scss 文件编译完成"
echo "🚅 上传新的布局 css 到七牛云"
qshell fput mongoblog public/global.css src/runtime/global.css --overwrite
echo "🚄 css 文件上传成功"
# 把组件代码推送远程仓库
echo "✈️ 开始组件 git 推送"
git add .
echo "🛫 执行 git 提交"
git commit -m "fix: 版本升级和样式更新"
echo "🛫 执行 git 推送"
git push
echo "🛬 推送更新成功"
