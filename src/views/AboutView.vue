<template>
  <div class="about">
    <h1>This is an about page</h1>
    {{ data }}
  </div>
</template>

<script>
export default {
  data() {
    return {
      data: {},
    };
  },
  mounted() {
    //vite中載入環境變數
    // console.log("vite載入了環境變數唷", import.meta.env.VITE_PATH);
    // console.log("開發中的環境變數唷", import.meta.env.VITE_TEXT);
    console.log("產品的變數唷", import.meta.env.VITE_TEXT);
    //取出路徑
    const url = import.meta.env.VITE_PATH;
    this.$http.get(url).then((res) => {
      console.log(res);
      this.data = res.data.results[0];
    });
  },
};
</script>

<style>
@media (min-width: 1024px) {
  .about {
    min-height: 100vh;
    display: flex;
    align-items: center;
  }
}
</style>
