<template>
  <div class="mongo-layout">
    <Header
      class="mongo-header"
      :class="{ dark: layoutTheme === 'dark' }"
      :navigation-list="header"
      @submit-change="changeTheme"
    >
      <template #logo>
        <slot name="logo" />
      </template>
    </Header>
    <main class="mongo-main">
      <slot name="main" />
    </main>
    <Footer class="mongo-footer">
      <template #footer>
        <slot name="footer" />
      </template>
    </Footer>
    <SideTool class="mongo-side-tool" />
  </div>
</template>

<script setup lang="ts">
import SideTool from './components/layout/SideTool.vue'
import Footer from './components/layout/Footer.vue'
import Header from './components/layout/Header.vue'
import { ref } from 'vue'
import { IHeaderNavItem } from './interface/global.ts'

const props = defineProps<{
  /**
   * 导航信息数组
   */
  navList: IHeaderNavItem[]
}>()
const layoutTheme = ref('light')
const header = ref<IHeaderNavItem[]>(props.navList ?? [])
// 暴露主题转换
const emit = defineEmits(['submitChange'])
const changeTheme = (theme: string) => {
  layoutTheme.value = theme
  emit('submitChange', theme)
}
</script>

<style>
@import url('./global.css');
</style>
