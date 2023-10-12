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
  // {
  //   name: 'Navigation',
  //   path: '/navigation',
  // },
  // {
  //   name: 'Gallery',
  //   path: '/gallery',
  // },
  // {
  //   name: 'About',
  //   path: '/about',
  // },
  // {
  //   name: 'Cloud',
  //   path: '/cloud',
  // },
]
</script>

<style>
@import url('../src/assets/layout.scss');
</style>
