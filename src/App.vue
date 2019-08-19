<template>
  <div id="app">
    <Header />
    <Home />
  </div>
</template>

<script>
import Header from "@/components/Header";
import Home from "@/pages/Home";

export default {
  name: "app",
  components: {
    Header,
    Home
  },
  data: function() {
    return {
      scroll: 0
    };
  }
};
</script>