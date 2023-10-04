<template>
  <div>
    <div
      id="wx-qr-code"
      class="side-tool-item"
      :style="{ 'border-bottom-left-radius': showFlag ? '0' : '4px' }"
    >
      <QrCode />
    </div>
    <div v-if="showFlag" class="side-tool-divider"></div>
    <div v-if="showFlag" id="back-top" class="side-tool-item" @click="backTop">
      <BackTop />
    </div>
    <div class="aside-wx-box">
      <img src="http://img.linkstarted.top/blog/qrcode_roy.jpg" />
      <section>
        <div class="title">扫码关注我的公众号</div>
        <span class="desc">关于代码的问题都欢迎交流</span>
      </section>
    </div>
  </div>
</template>

<script setup lang="ts">
import { onMounted, ref } from "vue";
import BackTop from "../icon/BackTop.vue";
import QrCode from "../icon/QrCode.vue";

const showFlag = ref(false);

const debounce = (func: Function, timeout = 300) => {
  const timer = ref();
  return (...args: any) => {
    clearTimeout(timer.value);
    timer.value = setTimeout(() => {
      func.apply(this, args);
    }, timeout);
  };
};

//滚动页面后再显示回到顶部
const onFeedbackHiddenWhenScroll = debounce(() => {
  if (document.documentElement.scrollTop >= 150) showFlag.value = true;
  else showFlag.value = false;
}, 100);

const backTop = () => {
  window.scrollTo({
    top: 0,
    behavior: "smooth",
  });
};

onMounted(() => {
  window.addEventListener("scroll", onFeedbackHiddenWhenScroll);
});
</script>
