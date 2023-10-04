<template>
  <div class="mongo-layout">
    <Header
      class="mongo-header"
      :navigation-list="header ?? []"
      @submit-change="changeTheme"
    />
    <main>
      <slot />
    </main>
    <Footer class="mongo-footer" />
    <SideTool class="mongo-side-tool" />
  </div>
</template>
<script setup lang="ts">
import SideTool from './components/layout/SideTool.vue'
import Footer from './components/layout/Footer.vue'
import Header from './components/layout/Header.vue'
import { useHead, useFetch, computed } from '#imports'
import { IMongoLayout } from '../interface/global'

const { data } = await useFetch<IMongoLayout>(
  'https://img.linkstarted.top/public/data.json',
  {
    method: 'GET',
    key: 'cdn_config',
  },
)
// @ts-ignore
const header = computed(() => data.value?.header.nav_list)
useHead({
  link: [
    {
      rel: 'stylesheet',
      type: 'text/css',
      href: 'https://img.linkstarted.top/public/global.css',
    },
  ],
})
const emit = defineEmits(['submitChange'])
const changeTheme = (theme: string) => {
  emit('submitChange', theme)
}
</script>
