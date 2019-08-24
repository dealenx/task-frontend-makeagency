<template>
  <div
    class="container-select"
    ref="selectBox"
    v-click-outside="onClickOutside"
    v-bind:class="{ 'select-show': !isHide }"
  >
    <select v-model="selected">
      <option v-for="(option, index) in options" :key="index" :value="option.id">{{option.label}}</option>
    </select>
    <div class="select-selected" @click="switchHide">{{options[selected].label}}</div>
    <div class="select-items" ref="selectItems">
      <div
        v-for="(option, index) in options"
        :key="index"
        v-show="index != 0"
        @click="setNewSelected(index)"
        v-bind:class="{ 'same-as-selected': isItemActive(index) }"
      >{{option.label}}</div>
    </div>
  </div>
</template>

<script >
import vClickOutside from "v-click-outside";

export default {
  name: "SelectBox",
  data() {
    return {
      options: [
        { label: "Выберите что-нибудь", id: 0 },
        { label: "Первый стул", id: 1 },
        { label: "Второй стул", id: 2 },
        { label: "Теорема Эскобара", id: 3 }
      ],
      selected: 0,
      isHide: true,
      classObject: {
        "select-hide": true
      }
    };
  },
  directives: {
    clickOutside: vClickOutside.directive
  },

  methods: {
    handleInput(e) {
      this.$emit("input", this.selected);
    },
    isItemActive(index) {
      return index == this.selected ? true : false;
    },
    setNewSelected(index) {
      this.selected = index;
      this.isHide = !this.isHide;
    },
    switchHide() {
      this.isHide = !this.isHide;
    },
    onClickOutside(event) {
      if (this.isHide == false) {
        this.switchHide();
      }
    }
  },
  watch: {
    value: function(newVal) {
      //value: function(newVal, oldVal) {
      this.selected = newVal;
    }
  }
};
</script>

<style lang="scss">
@import "style.scss";
</style> 
