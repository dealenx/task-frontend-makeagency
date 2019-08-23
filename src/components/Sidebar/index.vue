<template>
  <ul class="sidebar-ul" v-bind:class="{ 'stick': scrollY > 175 }">
    <li v-for="(item,index) in anchorLinks" :key="index" ref="acnhorLink" :data-index="index">
      <a v-bind:href="'#'+item.anchor+''">{{item.title}}</a>
    </li>
    <!-- 
    <li>
      <a href="#ui">UI</a>
    </li>-->
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

      let min = 10000;
      let minIndex = 0;

      /*for (let i = 0; i < anchors.length; i++) {
        let top = Math.abs(anchors[i].offsetTop - self.scrollY);
        let bottom = Math.abs(
          anchors[i].offsetTop + anchors[i].offsetWidth - self.scrollY
        );
        let minValue = top < bottom ? top : bottom;
        if (min > minValue) {
          min = minValue;
          minIndex = i;
        }
      }*/
      console.clear();
      let currentIndex = 0;
      for (let i = 0; i < anchors.length - 1; i++) {
        if (
          self.scrollY >= Math.abs(anchors[i].offsetTop) &&
          self.scrollY < Math.abs(anchors[i + 1].offsetTop)
        ) {
          currentIndex = i;
        } else if (self.scrollY >= Math.abs(anchors[i].offsetTop)) {
          currentIndex = anchors.length - 1;
        } else {
          currentIndex = 0;
        }
      }

      for (let item of this.$refs.acnhorLink) {
        item.classList.remove("active");
      }
      this.$refs.acnhorLink[currentIndex].classList.add("active");

      /*console.clear();
      console.log(minIndex);
      console.log(this.$refs.acnhorLink[minIndex]);
      for (let item of this.$refs.acnhorLink) {
        item.classList.remove("active");
      }
      this.$refs.acnhorLink[minIndex].classList.add("active");
      console.log(min);*/
    }
  }
};
</script>

<style scoped lang="scss">
@import "style.scss";
</style> 
