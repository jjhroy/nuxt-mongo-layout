<template>
  <header>
    <div class="header-menu-btn" @click="showDrawer = !showDrawer">
      <Menu v-if="!showDrawer" />
      <Close v-else />
    </div>
    <NuxtLink
      class="header-logo"
      to="/"
      :class="{ focus: currentRoute === '/' }"
    >
      <slot name="logo" />
    </NuxtLink>

    <nav class="header-nav-list" :class="{ active: showDrawer }">
      <NuxtLink
        v-for="{ name, path } in navigationList"
        :key="`${path}${name}`"
        :to="path"
        class="header-nav-item"
        :class="{ focus: currentRoute === path }"
      >
        {{ name }}
      </NuxtLink>
    </nav>
    <div class="header-theme-btn">
      <slot name="theme" />
    </div>
  </header>
</template>
<script setup lang="ts">
import Menu from '../icon/Menu.vue'
import Close from '../icon/Close.vue'
import { useRoute } from '#app'
import { ref, computed } from 'vue'
import { IHeaderNavItem } from '../../interface/global'

defineProps<{ navigationList: IHeaderNavItem[] }>()

const route = useRoute()
const currentRoute = computed(() => String(route.path))
const showDrawer = ref(false)
</script>
