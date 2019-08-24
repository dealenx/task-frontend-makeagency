<template>
  <div ref="component">
    <slot></slot>
  </div>
</template>

<script >
export default {
  name: "Tabs",
  mounted() {
    this.active = this.activeTab;
    this.updateDOM();
  },
  props: {
    activeTab: {
      type: String
    }
  },
  data: function() {
    return {
      active: ""
    };
  },
  methods: {
    updateDOM: function() {
      let tabLinks = this.$refs.component.querySelectorAll("[tab-link]");

      for (let link of tabLinks) {
        link.addEventListener("click", this.clickTabLink);
      }
      this.makeActiveTabLink();
      this.showActiveTabContent();
    },
    clickTabLink: function(event) {
      let items = event.path;

      for (let item of items) {
        if (
          typeof item.getAttribute !== "undefined" &&
          typeof item.getAttribute === "function"
        ) {
          if (item.getAttribute("tab-link") != null) {
            this.active = item.getAttribute("tab-link");
          }
        }
      }
      this.makeActiveTabLink();
      this.showActiveTabContent();
    },
    showActiveTabContent() {
      let tabContents = this.$refs.component.querySelectorAll("[tab-content]");

      for (let tabContent of tabContents) {
        tabContent.classList.remove("hidden");
        if (tabContent.getAttribute("tab-content") != this.active) {
          tabContent.classList.add("hidden");
        }
      }
    },
    makeActiveTabLink() {
      let tabLinks = this.$refs.component.querySelectorAll("[tab-link]");

      for (let link of tabLinks) {
        link.classList.remove("active");
        if (link.getAttribute("tab-link") == this.active) {
          link.classList.add("active");
        }
      }
    }
  }
};
</script>
 

<style scoped lang="scss">
@import "style.scss";
</style> 
