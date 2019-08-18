<template>
  <div class="site-menu" v-if="isVisible">
    <button class="site-menu__close" @click="switchVisible">Закрыть</button>
  </div>
</template>

<script>
export default {
  name: "Menu",
  data: function() {
    return {
      isVisible: false
    };
  },
  methods: {
    switchVisible() {
      console.log("CLICK");
      this.isVisible = !this.isVisible;
    }
  }
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->


<style scoped lang="scss">
@import "style.scss";
</style> 
