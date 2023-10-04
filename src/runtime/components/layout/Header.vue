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
      🥭Bochi
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
      <Sun v-if="theme === 'light'" @click="changeTheme('dark')" />
      <Moon v-else @click="changeTheme('light')" />
    </div>
  </header>
</template>
<script setup lang="ts">
import Sun from "../icon/Sun.vue";
import Moon from "../icon/Moon.vue";
import Menu from "../icon/Menu.vue";
import Close from "../icon/Close.vue";
import { useRoute } from "#app";
import { ref } from "vue";

const emit = defineEmits(["submitChange"]);
const route = useRoute();
const currentRoute = ref(String(route.path));
const theme = ref("light");
const showDrawer = ref(false);
const navigationList = [
  {
    name: "Blog",
    path: "/blog",
  },
  {
    name: "Navigation",
    path: "/navigation",
  },
  {
    name: "Gallery",
    path: "/gallery",
  },
  {
    name: "About",
    path: "/about",
  },
  {
    name: "Cloud",
    path: "/cloud",
  },
];
const changeTheme = (type: string) => {
  theme.value = type;
  emit("submitChange", type);
};
</script>
