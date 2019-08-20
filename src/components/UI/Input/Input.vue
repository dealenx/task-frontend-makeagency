<template>
  <input
  v-model="content"
  @input="handleInput"
  :class="{ 
    [`full-width`]:isFullWidth, 
    [`size-small`]:isSmall,
    [`size-big`]:isBig
  }" 
  class="ui-input">
</template>

<script >
import Vue from "vue";

export default {
    props: {
      isFullWidth: { //is-submit в параметры 
        default: false,
        type: Boolean,
        required: false
      },
      
      isSmall: { //is-small в параметры 
        default: false,
        type: Boolean,
        required: false
      }, 
      isBig: { //is-big в параметры
        default: false,
        type: Boolean,
        required: false
      },
      isMask: { //is-big в параметры
        default: false,
        type: Boolean,
        required: false
      },
      dataVModel: {
        required: false
      },
      value: {

      }
    },
    data() {
      return {
        content: this.value
      }
    }, 

    methods: {
        handleInput (e) {
          this.$emit('input', this.content)
        }
    },
    watch: { 
      	value: function(newVal, oldVal) { // watch it
          this.content = newVal;
        }
    }
  };
</script>

<style lang="scss">
.ui-input {
    appearance: none;
    min-width: 50px;
    padding: 0 18px 0 18px;
    margin: 2px 0;
    height: 38px;
    border-radius: 50px;
    font-size: 16px;
    border: 1px solid #dddddd;
    outline: none;
    color: #656565;
    font-style: italic;
    display: flex;
    transition: all 0.2s ease;

    &::placeholder {
      color: #BBBBBB;
    }

    &:focus {
        border: 1px solid #5581F5;
        color: #5581F5;
    }


    &.dirty {
      border-color: #2db92d;
      color: #2db92d !important;

      &::placeholder {
        color: #BBBBBB !important;
      }
      &.dirty:focus {
        color: #0ae00a !important;
        outline-color: #0ae00a;
      }
    }

    &.error {
      border-color: #d23b4b;
      color: #d23b4b !important;

      &::placeholder {
        color: #BBBBBB !important;
      }
      &.error:focus {
        color: #d23b4b !important;
        outline-color: #F99;
      }
    }

    &.full-width {
      width: 100%;
    }

    &.size-small {
      height: 30px;
      line-height: 30px;
      font-size: 15px;
    }
    &.size-big {
      height: 40px;
      line-height: 40px;
      font-size: 18px;
    }
    
}
</style> 
