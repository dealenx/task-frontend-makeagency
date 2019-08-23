<template>
  <div>
    <slot></slot>
    <slot name="tab-1" v-if="showActive('tab-1')"></slot>
    <slot name="tab-2" v-if="showActive('tab-2')"></slot>
  </div>
</template>

<script >
export default {
  name: "Tabs",
  props: {
    tabs: {
      type: Array
    }
  },
  data() {
    return {
      active: "tab-1"
    };
  },
  methods: {
    makeActive: function(item) {
      this.active = item;
    },
    showActive: function(item) {
      return this.active == item;
    }
  }
};
</script>
 

<style scoped lang="scss">
@import "style.scss";
</style> 
