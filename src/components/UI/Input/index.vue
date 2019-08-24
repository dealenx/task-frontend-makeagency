<template>
  <div class="field">
    <input :type="type" :placeholder="placeholder" :value="value" />
    <label>{{label}}</label>
    <div class="error">{{errorText}}</div>
  </div>
</template>

<script >
export default {
  name: "Input",
  props: {
    value: {
      default: ""
    },
    placeholder: {
      default: "name@gmail.com"
    },
    errorText: {
      default: "Текст ошибки"
    },
    type: {
      default: "email"
    },
    label: { default: "E-mail" }
  },
  data() {
    return {
      content: this.value
    };
  },

  methods: {
    handleInput(e) {
      this.$emit("input", this.content);
    }
  },
  watch: {
    value: function(newVal, oldVal) {
      this.content = newVal;
    }
  }
};
</script>

<style scoped lang="scss">
@import "style.scss";
</style> 
