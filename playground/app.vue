<template>
  <MongoLayout :nav-list="navList" @submit-change="changeTest">
    <NuxtPage />
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
