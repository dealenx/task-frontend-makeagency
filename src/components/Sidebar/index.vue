<template>
  <ul class="sidebar-ul" v-bind:class="{ 'stick': scrollY > 175 }">
    <li class="active">
      <a href="#">Напутственное слово</a>
    </li>
    <li>
      <a href="#">Сетка</a>
    </li>
    <li>
      <a href="#">Типографика</a>
    </li>
    <li>
      <a href="#">UI</a>
    </li>
  </ul>
</template>

<script>
export default {
  name: "Sidebar",
  data: function() {
    return {
      scrollY: 0
    };
  },
  mounted() {
    this.getScrollY();
  },
  methods: {
    getScrollY() {
      let self = this;
      document.getElementById("app").addEventListener("scroll", function() {
        self.scrollY = document.getElementById("app").scrollTop;
      });
    }
  }
};
</script>

<style scoped lang="scss">
@import "style.scss";
</style> 
