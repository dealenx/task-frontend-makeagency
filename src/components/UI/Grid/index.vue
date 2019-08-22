<template>
  <div class="ui-grid" :style="cssVars">
    <slot></slot>
  </div>
</template>

<script >
export default {
  name: "Grid",
  data() {
    return {};
  },
  props: {
    defaultCounts: {
      default: 12,
      type: Number,
      required: false
    },
    tabletCounts: {
      default: 8,
      type: Number,
      required: false
    },
    mobileCounts: {
      default: 4,
      type: Number,
      required: false
    }
  },
  computed: {
    cssVars() {
      return {
        "--default-columns-counts": "" + this.checkDefaultSizePropry(),
        "--tablet-columns-counts": "" + this.checkTabletSizePropry(),
        "--mobile-columns-counts": "" + this.checkMobileSizePropry()
      };
    }
  },
  methods: {
    checkDefaultSizePropry() {
      return this.defaultCounts != undefined ? this.defaultCounts : "";
    },
    checkTabletSizePropry() {
      return this.tabletCounts != undefined ? this.tabletCounts : "";
    },
    checkMobileSizePropry() {
      return this.mobileCounts != undefined ? this.mobileCounts : "";
    }
  }
};
</script>
 

<style scoped lang="scss">
@import "style.scss";
</style> 
