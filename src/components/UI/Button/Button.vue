<template>
  <button @click="handleClick"
  v-if="isSubmit" type="submit" class="ui-button"
  :class="{
    [`style-${theme}`]:true, 
    [`size-small`]:isSmall,
    [`size-big`]:isBig,
    [`is-disabled`]:isLoading
  }" 
   >
    <i v-if="isViewLeftIcon()" :class="{[`${iconLeft}`]:true }" class="ui-button-icon-left"></i>
    <span class="ui-button-text">
      <slot></slot> 
    </span>
    <i v-if="isViewRightIcon()" :class="{[`${iconRight}`]:true }" class="ui-button-icon-right"></i>
    <div v-if="isLoading" class="loading-line"></div>
  </button>

  <a @click="handleClick" v-else :href="href" class="ui-button"
  :class="{
    [`style-${theme}`]:true, 
    [`size-small`]:isSmall,
    [`size-big`]:isBig,
    [`is-disabled`]:isLoading
  }" 
  >
    <i v-if="isViewLeftIcon()" :class="{[`${iconLeft}`]:true }" class="ui-button-icon-left"></i>
    <span class="ui-button-text">
      <slot></slot> 
    </span> 
    <i v-if="isViewRightIcon()" :class="{[`${iconRight}`]:true }" class="ui-button-icon-right"></i>
    <div v-if="isLoading" class="loading-line"></div>
  </a>
</template>

<script >
import Vue from "vue";

export default {
    props: {
      onClick: {
        type: Function, 
        required: false
      },
      isLoading: {
        default: false,
        type: Boolean,
        required: false
      }, 
      href: {
          default: 'javascript:void(0)',
          type: String,
          required: false
      },
      theme: {
        default: 'blue',
        type: String,
        required: false
      }, 
      iconLeft: {
        default: null,
        type: String,
        required: false
      }, 
      iconRight: {
        default: null,
        type: String,
        required: false
      }, 
      isSubmit: { //is-submit в параметры 
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

    },
    data() {
      return {
        
      }
    }, 
    components: {
      
    },
    computed: {
        
    },
    created() { 
    },
    mounted() {
    },
     
    methods: {
        switchLoading() {
          this.isLoading = !this.isLoading
        },
        isViewLeftIcon() {
            if(this.iconLeft == null) {
                return false;
            } else {
                return true;
            }
            return false;
        },
        isViewRightIcon() {
            if(this.iconRight == null) {
                return false; 
            } else {
                return true;
            }
            return false;
        },
        handleClick() {
          this.$emit('click')
        }
    }
  };
</script>

<style scope lang="scss">
$color-blue: #5581f5;
$color-blue-hover: #1d46b0;

$color-orange: #ff6000;
$color-orange-hover: #d85300;

$color-light: #fff;
$color-light-second: #5581F5;
$color-light-hover: #5581F5;

.ui-button {
  height: 35px;
  font-size: 14px;
  line-height: 35px;
  border-radius: 6px;
  display: flex;
  flex-direction: flex-start;
  justify-content: center;
  align-items: center;
  text-decoration: none; 
  outline: none;
  border: none;
  color: #fff;
  padding: 0px 20px;
  transition: all 0.3s ease;
  position: relative;
  cursor: pointer;
  overflow: hidden;
  
  &.is-disabled {
    //background: #1d46b0 !important;
    pointer-events: none;
  }

  &.size-small { 
    height: 30px;
    line-height: 30px;
    font-size: 10px;
  }
  &.size-big {
    height: 40px;
    line-height: 40px;
    font-size: 18px;
  }
}
.ui-button.style-blue {
  background: $color-blue; 

  &:hover {
    background: $color-blue-hover; 
  }
  &:active {
    background: lighten($color-blue-hover, 15%); 
  }
}
.ui-button.style-orange {
  background: $color-orange; 

  &:hover {
    background: $color-orange-hover; 
  }
  &:active {
    background: lighten($color-orange-hover, 15%); 
  }
}
.ui-button.style-light {
  background: $color-light; 
  border: 1px solid $color-light-second; 
  color: $color-light-second; 

  &.is-disabled {
    background: #1d46b0 !important;
  }

  &:hover {
    color: $color-light; 
    background: $color-light-second; 
  }
  &:active {
    background: lighten($color-light-second, 15%); 
  }
}
.ui-button-icon-left {
  margin-right: 8px;
}
.ui-button-icon-right {
  margin-left: 8px;
}
.loading-line {
  position: absolute;
  bottom: 0;
  width: 100%;
  height: 100%;
	background-size: 40px 40px;
	background-image: 
	   -webkit-gradient(linear, 0 0, 100% 100%,
	      color-stop(.25, rgba(255, 255, 255, .2)),
	      color-stop(.25, transparent),
	      color-stop(.5, transparent),
	      color-stop(.5, rgba(255, 255, 255, .2)),
	      color-stop(.75, rgba(255, 255, 255, .2)),
	      color-stop(.75, transparent),
	      to(transparent)
	   );
	background-image: 
		-webkit-linear-gradient(
		  -45deg,
	      rgba(255, 255, 255, .2) 25%,
	      transparent 25%,
	      transparent 50%,
	      rgba(255, 255, 255, .2) 50%,
	      rgba(255, 255, 255, .2) 75%,
	      transparent 75%,
	      transparent
	   );
	-webkit-animation: move 0.7s linear infinite;
}

 @-webkit-keyframes Gradient {
		0%{background-position:0% 50%}
		50%{background-position:100% 50%}
		100%{background-position:0% 50%}
	}
	@-moz-keyframes Gradient {
		0%{background-position:0% 50%}
		50%{background-position:100% 50%}
		100%{background-position:0% 50%}
	}
	@keyframes Gradient { 
		0%{background-position:0% 50%}
		50%{background-position:100% 50%}
		100%{background-position:0% 50%}
  }
  
  /* animations */
@keyframes move {
    0% {background-position: 0 0;}
    100% {background-position: 40px 40px;}
}
@-webkit-keyframes move {
    0% {background-position: 0 0;}
    100% {background-position: 40px 40px;}
}
</style> 
