<template>
  <div class="site-home">
    <div class="site-home__sidebar">
      <Sidebar
        :anchor-links="
      [
        { title: 'Напутственное слово', anchor: 'desc' },
        { title: 'Сетка', anchor: 'grid' },
        { title: 'Типографика', anchor: 'typography' },
        { title: 'UI', anchor: 'ui' }
      ]
      "
      />
    </div>
    <div class="site-home__content">
      <div class="site-home__main-info">
        <a class="anchor" name="desc"></a>
        <h1>Тестовое задание</h1>
        <h3>Уровень: junior</h3>
        <p>Привет! Твоё тестовое задание — грамотно заверстать эту прекрасную страничку. В шапке страницы укажи своё ФИО, так всем будет удобнее. В менюхе под иконкой бургером мы хотели бы также видеть твои данные. Ну что, поехали?</p>
      </div>

      <div class="site-section">
        <a class="anchor" name="grid"></a>
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
        <a class="anchor" name="typography"></a>
        <h2>Типография</h2>
        <p>Используется шрифт Graphik. На телефонах стили типографики переопределяются</p>

        <tabs class="site-subsection tabs" activeTab="tab-1">
          <ul class="site-tabs__nav">
            <li tab-link="tab-1">Компьютер</li>
            <li tab-link="tab-2">Телефон</li>
          </ul>

          <ul class="site-typography" tab-content="tab-1">
            <li>
              <div class="site-typography__desc">Заголовок H1, 48/56, bold</div>
              <div class="site-typography__example">
                <h1 class="laptop">Текст заголовка</h1>
              </div>
            </li>

            <li>
              <div class="site-typography__desc">Заголовок H2, 32/40, bold</div>
              <div class="site-typography__example">
                <h2 class="laptop">Текст заголовка</h2>
              </div>
            </li>

            <li>
              <div class="site-typography__desc">Заголовок H3, 24/32, medium</div>
              <div class="site-typography__example">
                <h3 class="laptop">Текст заголовка</h3>
              </div>
            </li>

            <li>
              <div class="site-typography__desc">Заголовок H4, 18/28, medium</div>
              <div class="site-typography__example">
                <h4 class="laptop">Текст заголовка</h4>
              </div>
            </li>

            <li>
              <div class="site-typography__desc">Лид P_Lead, 24/32, regular</div>
              <div class="site-typography__example">
                <p class="p-lead laptop">Текст лида</p>
              </div>
            </li>

            <li>
              <div class="site-typography__desc">Крупный текст P_18, 18/28, regular</div>
              <div class="site-typography__example">
                <p class="p-18 laptop">Крупный текст</p>
              </div>
            </li>

            <li>
              <div class="site-typography__desc">Основной текст P_16, 16/24, regular</div>
              <div class="site-typography__example">
                <p class="p-16 laptop">Основной текст</p>
              </div>
            </li>

            <li>
              <div class="site-typography__desc">Впомогательный текст P_14, 14/20, regular</div>
              <div class="site-typography__example">
                <p class="p-14 laptop">Вспомогательный текст</p>
              </div>
            </li>
          </ul>

          <ul class="site-typography" tab-content="tab-2">
            <li>
              <div class="site-typography__desc">Заголовок H1, 48/56, bold</div>
              <div class="site-typography__example">
                <h1 class="mobile">Текст заголовка</h1>
              </div>
            </li>

            <li>
              <div class="site-typography__desc">Заголовок H2, 32/40, bold</div>
              <div class="site-typography__example">
                <h2 class="mobile">Текст заголовка</h2>
              </div>
            </li>

            <li>
              <div class="site-typography__desc">Заголовок H3, 24/32, medium</div>
              <div class="site-typography__example">
                <h3 class="mobile">Текст заголовка</h3>
              </div>
            </li>

            <li>
              <div class="site-typography__desc">Заголовок H4, 18/28, medium</div>
              <div class="site-typography__example">
                <h4 class="mobile">Текст заголовка</h4>
              </div>
            </li>

            <li>
              <div class="site-typography__desc">Лид P_Lead, 24/32, regular</div>
              <div class="site-typography__example">
                <p class="p-lead mobile">Текст лида</p>
              </div>
            </li>

            <li>
              <div class="site-typography__desc">Крупный текст P_18, 18/28, regular</div>
              <div class="site-typography__example">
                <p class="p-18 mobile">Крупный текст</p>
              </div>
            </li>

            <li>
              <div class="site-typography__desc">Основной текст P_16, 16/24, regular</div>
              <div class="site-typography__example">
                <p class="p-16 mobile">Основной текст</p>
              </div>
            </li>

            <li>
              <div class="site-typography__desc">Впомогательный текст P_14, 14/20, regular</div>
              <div class="site-typography__example">
                <p class="p-14 mobile">Вспомогательный текст</p>
              </div>
            </li>
          </ul>
        </tabs>
      </div>

      <div class="site-section">
        <a class="anchor" name="ui"></a>
        <h2>UI</h2>

        <div class="site-subsection ui">
          <h3>Текстовое поле</h3>
          <div class="ui-col-3-3-4">
            <p class="ui-desc"></p>
            <Input value />
          </div>
          <div class="ui-col-3-3-4">
            <p class="ui-desc">Ошибка</p>
            <Input value="officemake.st" />
          </div>
        </div>
        <div class="site-subsection ui">
          <h3>Выпадающее меню</h3>
          <div class="dev">
            <h2>В разработке</h2>
          </div>
        </div>
        <div class="site-subsection ui">
          <h3>Кнопка</h3>
          <div class="dev">
            <h2>В разработке</h2>
          </div>
        </div>
        <div class="site-subsection ui">
          <h3>Чекбокс, радиобаттон</h3>
          <div class="dev">
            <h2>В разработке</h2>
          </div>
        </div>
        <div class="site-subsection ui">
          <h3>Аккордеон</h3>
          <div class="dev">
            <h2>В разработке</h2>
          </div>
        </div>
      </div>
    </div>
    <div class="site-home__footer">Победа! 😜</div>
  </div>
</template>

<script>
import Sidebar from "@/components/Sidebar";
import { Tabs, Input } from "@/components/UI";
import twemoji from "twemoji";

export default {
  name: "Home",
  components: {
    Sidebar,
    Tabs,
    Input
  },
  mounted() {
    twemoji.parse(document.getElementsByClassName("site-home__footer")[0]);
  }
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->


<style scoped lang="scss">
@import "style.scss";
</style> 
