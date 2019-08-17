<template>
  <div class="hello">
    <h1>{{ msg }}</h1>

    <section class="my-main">
      <div class="col-2">1</div>
      <div>2</div>
      <div>3</div>
      <div>3</div>
    </section>
  </div>
</template>

<script>
export default {
  name: "HelloWorld",
  props: {
    msg: String
  }
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->


<style scoped lang="scss">
@import "style.scss";
</style> 
