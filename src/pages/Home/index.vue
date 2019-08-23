<template>
  <div class="site-home">
    <div class="site-home__sidebar">
      <Sidebar />
    </div>
    <div class="site-home__content">
      <div class="site-home__main-info">
        <h1>Тестовое задание</h1>
        <h3>Уровень: junior</h3>
        <p>Привет! Твоё тестовое задание — грамотно заверстать эту прекрасную страничку. В шапке страницы укажи своё ФИО, так всем будет удобнее. В менюхе под иконкой бургером мы хотели бы также видеть твои данные. Ну что, поехали?</p>
      </div>

      <div class="site-section">
        <h2>Сетка</h2>
        <p>Задание предполагает адаптивную вёрстку. Используется 3 состояния в зависимости от устройства. Сетка «резиновая» — переменной ширины.</p>

        <div class="site-subsection grid">
          <h3>Десктоп (1200+)</h3>

          <div class="grid-info">
            <div class="grid-info__item">
              <p>Контент</p>
              <span>1072–1312</span>
            </div>
            <div class="grid-info__item">
              <p>Колонок</p>
              <span>12</span>
            </div>
            <div class="grid-info__item">
              <p>Ширина колонки</p>
              <span>60-80</span>
            </div>
            <div class="grid-info__item">
              <p>Межколонник</p>
              <span>32</span>
            </div>
          </div>
          <img src="@/assets/img/site-home/grid/laptop.jpg" alt />
        </div>

        <div class="site-subsection grid">
          <h3>Планшет (736+)</h3>

          <div class="grid-info">
            <div class="grid-info__item">
              <p>Контент</p>
              <span>672–928</span>
            </div>
            <div class="grid-info__item">
              <p>Колонок</p>
              <span>8</span>
            </div>
            <div class="grid-info__item">
              <p>Ширина колонки</p>
              <span>56-88</span>
            </div>
            <div class="grid-info__item">
              <p>Межколонник</p>
              <span>32</span>
            </div>
          </div>
          <img src="@/assets/img/site-home/grid/tablet.jpg" alt />
        </div>

        <div class="site-subsection grid">
          <h3>Телефон (320+)</h3>

          <div class="grid-info">
            <div class="grid-info__item">
              <p>Контент</p>
              <span>296–424</span>
            </div>
            <div class="grid-info__item">
              <p>Колонок</p>
              <span>4</span>
            </div>
            <div class="grid-info__item">
              <p>Ширина колонки</p>
              <span>56-88</span>
            </div>
            <div class="grid-info__item">
              <p>Межколонник</p>
              <span>24</span>
            </div>
          </div>
          <img src="@/assets/img/site-home/grid/mobile.jpg" alt />
        </div>
      </div>

      <div class="site-section">
        <h2>Типография</h2>
        <p>Используется шрифт Graphik. На телефонах стили типографики переопределяются</p>

        <tabs class="site-subsection tabs" activeTab="tab-1">
          <ul class="site-tabs__nav">
            <li tab-link="tab-1">
              <a>Компьютер</a>
            </li>
            <li tab-link="tab-2">
              <a>Телефон</a>
            </li>
          </ul>

          <div tab-content="tab-1">
            <h2>Механическая очистка</h2>
          </div>

          <div tab-content="tab-2">
            <h2>Пескоструйная обработка</h2>
          </div>
        </tabs>
      </div>
    </div>
  </div>
</template>

<script>
import Sidebar from "@/components/Sidebar";
import { Tabs } from "@/components/UI";

export default {
  name: "Home",
  components: {
    Sidebar,
    Tabs
  }
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->


<style scoped lang="scss">
@import "style.scss";
</style> 
