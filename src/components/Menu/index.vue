<template>
  <transition name="bounce">
    <div class="site-menu" v-if="isVisible">
      <button class="site-menu__close" @click="switchVisible">
        <svg
          width="34"
          height="34"
          viewBox="0 0 34 34"
          fill="none"
          xmlns="http://www.w3.org/2000/svg"
        >
          <path
            fill-rule="evenodd"
            clip-rule="evenodd"
            d="M18.4142 17L26.1924 9.22184L24.7782 7.80762L17 15.5858L9.22183 7.80762L7.80761 9.22184L15.5858 17L7.80761 24.7782L9.22183 26.1924L17 18.4142L24.7782 26.1924L26.1924 24.7782L18.4142 17Z"
            fill="white"
          />
        </svg>
      </button>

      <div class="site-menu__content">
        <div class="site-menu__logo">
          <svg
            width="27"
            height="18"
            viewBox="0 0 27 18"
            fill="none"
            xmlns="http://www.w3.org/2000/svg"
          >
            <path
              fill-rule="evenodd"
              clip-rule="evenodd"
              d="M16.5187 12.8962H14.9211L16.9781 15.328H15.8093L12.7521 11.9313H13.5434H15.5978C18.1823 11.9313 20.2762 9.90722 20.2762 7.42586C20.2762 6.35729 19.8868 5.36597 19.2376 4.59513C18.4551 3.43116 19.3587 2.57788 20.1608 2.57788C19.9575 1.66907 18.8464 1.60104 18.8464 1.60104C18.7226 1.24306 18.4081 0.714294 17.7979 0.714294H16.2018C16.1808 0.714294 16.1603 0.717409 16.1401 0.720465L16.1401 0.720465C16.1231 0.723051 16.1064 0.725594 16.0898 0.726175C15.3049 0.810121 14.544 1.38303 15.3042 2.51155L15.3045 2.51192C15.3238 2.53876 16.3915 4.0205 16.3915 5.54387C16.3915 8.14175 14.1994 10.4236 11.4935 10.4236H6.51118H5.55035H0.428589C0.428589 11.2679 1.09323 11.9313 1.91325 11.9313H5.1454H11.2097L14.077 15.328H5.1454V17.8378H23.8085V15.328H18.7115L16.5187 12.8962ZM14.2966 8.47607C15.0808 7.68689 15.5306 6.62065 15.5306 5.55454C15.5306 4.26893 14.5826 2.9372 14.5729 2.92396L14.5671 2.9142L14.5606 2.9036C14.3496 2.59229 14.2302 2.31775 14.1733 2.06615L7.03573 9.72664H11.3616C12.4572 9.72664 13.4996 9.27806 14.2966 8.47607ZM1.84441 17.8378H4.2041V15.3032H1.84441V17.8378ZM24.8235 17.8572V15.3232L26.8572 16.5354L24.8235 17.8572ZM17.0937 2.38159C17.3272 2.38159 17.5162 2.20012 17.5162 1.97609C17.5162 1.75205 17.3272 1.57052 17.0937 1.57052C16.8603 1.57052 16.6711 1.75205 16.6711 1.97609C16.6711 2.20012 16.8603 2.38159 17.0937 2.38159Z"
              fill="white"
            />
          </svg>
        </div>
        <div class="site-menu__title">Задание выполнил</div>
        <div class="site-menu__info">
          <h1>Heading 1 (48px)</h1>
          <h2>Heading 2 (32px)</h2>
          <h3>Heading 3 (24px)</h3>
          <h4>Heading 4 (18px)</h4>
        </div>
        <div class="site-menu__link">123</div>
      </div>
    </div>
  </transition>
</template>

<script>
export default {
  name: "Menu",
  data: function() {
    return {
      isVisible: true
    };
  },
  methods: {
    switchVisible() {
      this.isVisible = !this.isVisible;
    }
  }
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->


<style scoped lang="scss">
@import "style.scss";
</style> 
