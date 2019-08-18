module.exports = {
  publicPath:
    process.env.NODE_ENV === "production" ? "/task-frontend-makeagency/" : "/",

  css: {
    loaderOptions: {
      sass: {
        data: `
          @import "@/styles/_variables.scss";
          @import "@/styles/_mixins.scss";
          @import "@/styles/_typography.scss";
        `
      }
    }
  }
};
