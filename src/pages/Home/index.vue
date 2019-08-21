<template>
  <div class="site-home">
    <Sidebar class="site-home__sidebar" />
    <div class="site-home__content">
      <!--<grid>
        <grid-col :size="6" :tablet-size="4">1</grid-col>
        <grid-col :size="6" :tablet-size="4">2</grid-col>
         <grid-col v-for="index in 14" :key="index">{{index}}</grid-col> 
      </grid>-->

      <div class="site-home__main-info">
        <h1>Тестовое задание</h1>
        <h3>Уровень: junior</h3>
        <p>Привет! Твоё тестовое задание — грамотно заверстать эту прекрасную страничку. В шапке страницы укажи своё ФИО, так всем будет удобнее. В менюхе под иконкой бургером мы хотели бы также видеть твои данные. Ну что, поехали?</p>
      </div>

      <div class="site-home__section">
        <h2>Сетка</h2>
        <p>Задание предполагает адаптивную вёрстку. Используется 3 состояния в зависимости от устройства. Сетка «резиновая» — переменной ширины.</p>
        <h3>Десктоп (1200+)</h3>

        <div class="site-home__subsection-grid">
          <img src="@/assets/img/site-home/grid/laptop.jpg" alt />
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import Sidebar from "@/components/Sidebar";
import { Grid, GridCol } from "@/components/UI";

export default {
  name: "Home",
  components: {
    Sidebar,
    Grid,
    GridCol
  }
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->


<style scoped lang="scss">
@import "style.scss";
</style> 
