<template>
  <div class="ui-grid-col" :style="cssVars">
    <slot></slot>
  </div>
</template>

<script >
export default {
  name: "GridCol",
  props: {
    size: {
      default: 1,
      type: Number,
      required: false,
      validator: function(value) {
        if (value > 0 && value < 12) {
          return true;
        }
      }
    },
    tabletSize: {
      type: Number,
      required: false,
      validator: function(value) {
        if (value > 0 && value < 9) {
          return true;
        }
      }
    },
    mobileSize: {
      type: Number,
      required: false,
      validator: function(value) {
        if (value > 0 && value < 5) {
          return true;
        }
      }
    }
  },
  computed: {
    cssVars() {
      return {
        "--my-size": "" + this.size,
        "--my-tablet-size": "" + this.checkTabletSizePropry(),
        "--my-mobile-size": "" + this.checkMobileSizePropry()
      };
    }
  },
  methods: {
    checkTabletSizePropry() {
      return this.tabletSize != undefined ? this.tabletSize : this.size;
    },
    checkMobileSizePropry() {
      if (this.mobileSize != undefined) {
        return this.mobileSize;
      } else if (this.tabletSize != undefined) {
        return this.tabletSize;
      } else {
        return this.size;
      }
    }
  }
};
</script>
 

<style scoped lang="scss">
@import "style.scss";
</style> 
