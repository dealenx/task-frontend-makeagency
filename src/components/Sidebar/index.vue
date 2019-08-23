<template>
  <ul class="sidebar-ul" v-bind:class="{ 'stick': scrollY > 175 }">
    <li v-for="(item,index) in anchorLinks" :key="index" ref="acnhorLink" :data-index="index">
      <a v-bind:href="'#'+item.anchor+''">{{item.title}}</a>
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
  props: {
    anchorLinks: {
      default: [{ title: "Напутственное слово", anchor: "desc" }]
    }
  },
  mounted() {
    this.getScrollY();
    this.followingAnchors();
  },
  methods: {
    getScrollY() {
      let self = this;
      document.getElementById("app").addEventListener("scroll", function() {
        self.scrollY = document.getElementById("app").scrollTop;
        self.followingAnchors();
      });
    },
    followingAnchors() {
      let self = this;

      let anchors = document.querySelectorAll("a[name]");

      let currentIndex = 0;
      for (let i = 0; i < anchors.length; i++) {
        let currentOffsetTop =
          anchors[i].offsetTop < 0 ? 0 : anchors[i].offsetTop;
        let nextOffsetTop =
          anchors[i + 1] != undefined
            ? anchors[i + 1].offsetTop
            : document.getElementById("app").scrollHeight;

        if (self.scrollY >= currentOffsetTop && self.scrollY < nextOffsetTop) {
          currentIndex = i;
        }
      }

      for (let item of this.$refs.acnhorLink) {
        item.classList.remove("active");
      }
      this.$refs.acnhorLink[currentIndex].classList.add("active");
    }
  }
};
</script>

<style scoped lang="scss">
@import "style.scss";
</style> 
