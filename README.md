# Nuxt-Mongo-Layout

[![npm version][npm-version-src]][npm-version-href]
[![npm downloads][npm-downloads-src]][npm-downloads-href]
[![Nuxt][nuxt-src]][nuxt-href]

## 是什么？

#### 简介

Nuxt-Mongo-Layout 是一个简单的为 Nuxt3 提供的 Layout 模块。

> 如果你了解什么是 [Nuxt Module](https://nuxt.com.cn/modules) 那么它使用是很简单的。
> 如果你刚刚接触 Nuxt，那么花几分钟浏览一下 Nuxt 的文档会让事半功倍。

Nuxt-Mongo-Layout 方便在你想要快速搭建一个有头部导航栏与页脚的 Nuxt 网站时提供一个快速解决方案。

#### 特点

- 支持响应式。
- 支持主题切换，目前只有  `light`  和 `dark` 两种。
- 多个插槽满足自定义的需求。

#### 预览

![image-20231010163916383](https://img.linkstarted.top/blog/image-20231010163916383.png)

## 模块结构

- ⛰ &nbsp;Header
- 🚠 &nbsp;Main
- 🌲 &nbsp;Footer

## 快速开始

1. 快速安装 `nuxt-mongo-layout` 到你的 Nuxt 项目中

```bash
# Using pnpm
pnpm add -D nuxt-mongo-layout

# Using yarn
yarn add --dev nuxt-mongo-layout

# Using npm
npm install --save-dev nuxt-mongo-layout
```

2. 将 `nuxt-mongo-layout` 添加到你的 Nuxt 项目中，在你的项目的 `nuxt.config.ts` 加入以下代码

```js
export default defineNuxtConfig({
  modules: [
    'nuxt-mongo-layout'
  ]
})
```

3. 在你的 `app.vue`  文件中使用它

> nav-list 是 导航列表
>
> @submit-change 是点击主题切换的回调
>
>  #logo 插槽是头部左侧的 LOGO
>
> #main 插槽是主要的内容
>
> #footer 插槽是底部的主要内容

```js
<template>
  <MongoLayout :nav-list="navList" @submit-change="changeTest">
    <template #logo> 🥭&nbsp; Mongo </template>
    <template #main>
      <NuxtPage />
    </template>
    <template #footer>
      <span>Copyright © 2021-PRESENT ROY</span>
      <a href="http://beian.miit.gov.cn/" target="_blank">
        闽ICP备2022016505号
      </a>
    </template>
  </MongoLayout>
</template>

<script setup lang="ts">
const changeTest = (theme: string) => {
  console.log('change test', theme)
}
const navList = [
  {
    name: 'Blog',
    path: '/blog',
  },
  {
    name: 'Navigation',
    path: '/navigation',
  },
  {
    name: 'Gallery',
    path: '/gallery',
  },
  {
    name: 'About',
    path: '/about',
  },
  {
    name: 'Cloud',
    path: '/cloud',
  },
]
</script>
```

4. 执行 `npm run dev`  或者 `yarn dev`  , 成功 ✨

[npm-version-src]: https://img.shields.io/npm/v/nuxt-mongo-layout/latest.svg?style=flat&colorA=18181B&colorB=28CF8D
[npm-version-href]: https://npmjs.com/package/nuxt-mongo-layout

[npm-downloads-src]: https://img.shields.io/npm/dm/nuxt-mongo-layout.svg?style=flat&colorA=18181B&colorB=28CF8D
[npm-downloads-href]: https://npmjs.com/package/nuxt-mongo-layout

[nuxt-src]: https://img.shields.io/badge/Nuxt-18181B?logo=nuxt.js
[nuxt-href]: https://nuxt.com
