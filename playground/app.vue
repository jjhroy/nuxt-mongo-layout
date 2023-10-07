<template>
  <MongoLayout @submit-change="changeTest">
    <div>Nuxt module playground!</div>
  </MongoLayout>
</template>

<script setup lang="ts">
const changeTest = (theme: string) => {
  console.log('change test', theme)
}
</script>

<style>
@import url('../src//assets/global.scss');
</style>
