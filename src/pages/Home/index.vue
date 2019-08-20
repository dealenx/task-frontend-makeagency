<template>
  <div class="site-home">
    <Sidebar class="site-home__sidebar" />
    <div class="site-home__content">
      <grid>
        <grid-col :size="6" :tablet-size="4">1</grid-col>
        <grid-col :size="6" :tablet-size="4">2</grid-col>
        <!-- <grid-col v-for="index in 14" :key="index">{{index}}</grid-col> -->
      </grid>
    </div>
  </div>
</template>

<script>
import Sidebar from "@/components/Sidebar";
import { Grid, GridCol } from "@/components/UI";

export default {
  name: "Home",
  components: {
    Sidebar,
    Grid,
    GridCol
  }
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->


<style scoped lang="scss">
@import "style.scss";
</style> 
