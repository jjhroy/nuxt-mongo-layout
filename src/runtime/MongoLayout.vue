<template>
  <div class="mongo-layout">
    <Header class="mongo-header" @submit-change="changeTheme" />
    <main>
      <slot />
    </main>
    <Footer class="mongo-footer" />
    <SideTool class="mongo-side-tool" />
  </div>
</template>
<script setup lang="ts">
import SideTool from "./components/layout/SideTool.vue";
import Footer from "./components/layout/Footer.vue";
import Header from "./components/layout/Header.vue";

const emit = defineEmits(["submitChange"]);
const changeTheme = (theme: string) => {
  emit("submitChange", theme);
};
</script>
