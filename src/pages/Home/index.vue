<template>
  <div class="site-home">
    <Sidebar class="site-home__sidebar" />
    <div class="site-home__content">
      <section class="my-main">
        <div v-for="index in 80" :key="index">{{index}}</div>
      </section>
    </div>
  </div>
</template>

<script>
import Sidebar from "@/components/Sidebar";

export default {
  name: "Home",
  components: {
    Sidebar
  }
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->


<style scoped lang="scss">
@import "style.scss";
</style> 
