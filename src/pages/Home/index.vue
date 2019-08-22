<template>
  <grid class="site-home">
    <grid-col :size="3" :tablet-size="2" class="site-home__sidebar">
      <Sidebar />
    </grid-col>
    <grid-col :size="9" :tablet-size="6" class="site-home__content">
      <div class="site-home__main-info">
        <h1>Тестовое задание</h1>
        <h3>Уровень: junior</h3>
        <grid :default-counts="9" :tablet-counts="6">
          <grid-col :size="6" :tablet-size="6" :mobile-size="4">
            <p>Привет! Твоё тестовое задание — грамотно заверстать эту прекрасную страничку. В шапке страницы укажи своё ФИО, так всем будет удобнее. В менюхе под иконкой бургером мы хотели бы также видеть твои данные. Ну что, поехали?</p>
          </grid-col>
        </grid>
      </div>

      <div class="site-home__section">
        <h2>Сетка</h2>
        <grid :default-counts="9" :tablet-counts="6">
          <grid-col
            :size="6"
            :tablet-size="6"
            :mobile-size="4"
            class="site-home__section-desc"
          >Задание предполагает адаптивную вёрстку. Используется 3 состояния в зависимости от устройства. Сетка «резиновая» — переменной ширины.</grid-col>
        </grid>

        <div class="site-home__subsection-grid">
          <h3>Десктоп (1200+)</h3>

          <grid
            :default-counts="9"
            :tablet-counts="9"
            :tablet-mobile="4"
            class="site-home__subsection-grid-info"
          >
            <grid-col :size="2" :tablet-size="4" :mobile-size="2">
              <p>Контент</p>
              <span>1072–1312</span>
            </grid-col>
            <grid-col :size="2" :tablet-size="4" :mobile-size="2">
              <p>Колонок</p>
              <span>12</span>
            </grid-col>
            <grid-col :size="2" :tablet-size="4" :mobile-size="2">
              <p>Ширина колонки</p>
              <span>60-80</span>
            </grid-col>
            <grid-col :size="3" :tablet-size="4" :mobile-size="2">
              <p>Межколонник</p>
              <span>32</span>
            </grid-col>
          </grid>
          <img src="@/assets/img/site-home/grid/laptop.jpg" alt />
        </div>

        <div class="site-home__subsection-grid">
          <h3>Планшет (736+)</h3>

          <grid
            :default-counts="9"
            :tablet-counts="9"
            :tablet-mobile="4"
            class="site-home__subsection-grid-info"
          >
            <grid-col :size="2" :tablet-size="4" :mobile-size="2">
              <p>Контент</p>
              <span>672–928</span>
            </grid-col>
            <grid-col :size="2" :tablet-size="4" :mobile-size="2">
              <p>Колонок</p>
              <span>8</span>
            </grid-col>
            <grid-col :size="2" :tablet-size="4" :mobile-size="2">
              <p>Ширина колонки</p>
              <span>56-88</span>
            </grid-col>
            <grid-col :size="3" :tablet-size="4" :mobile-size="2">
              <p>Межколонник</p>
              <span>32</span>
            </grid-col>
          </grid>
          <img src="@/assets/img/site-home/grid/tablet.jpg" alt />
        </div>

        <div class="site-home__subsection-grid">
          <h3>Телефон (320+)</h3>

          <grid
            :default-counts="9"
            :tablet-counts="9"
            :tablet-mobile="4"
            class="site-home__subsection-grid-info"
          >
            <grid-col :size="2" :tablet-size="4" :mobile-size="2">
              <p>Контент</p>
              <span>296–424</span>
            </grid-col>
            <grid-col :size="2" :tablet-size="4" :mobile-size="2">
              <p>Колонок</p>
              <span>4</span>
            </grid-col>
            <grid-col :size="2" :tablet-size="4" :mobile-size="2">
              <p>Ширина колонки</p>
              <span>56-88</span>
            </grid-col>
            <grid-col :size="3" :tablet-size="4" :mobile-size="2">
              <p>Межколонник</p>
              <span>24</span>
            </grid-col>
          </grid>
          <img src="@/assets/img/site-home/grid/mobile.jpg" alt />
        </div>
      </div>
    </grid-col>
  </grid>
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
