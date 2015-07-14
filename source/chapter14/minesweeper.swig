---
title: "Chapter 14: Minesweeper"
styles:
  - "/chapter14/other_minesweeper_styles.css"
  - "/chapter14/minesweeper.css"
---

<main>
  <header class="title-bar">
    <img class="icon" src="https://dowdcvkfm95kf.cloudfront.net/minesweeper/icon.svg" width="28" height="28">
    <h1>Minesweeper</h1>
    <button>
      <img src="https://dowdcvkfm95kf.cloudfront.net/minesweeper/minimize.svg" width="24" height="24">
    </button>
    <button>
      <img src="https://dowdcvkfm95kf.cloudfront.net/minesweeper/maximize.svg" width="24" height="24">
    </button>
    <button>
      <img src="https://dowdcvkfm95kf.cloudfront.net/minesweeper/close.svg" width="24" height="24">
    </button>
  </header>
  <div class="minesweeper">
    <nav>
      <button>Game</button>
      <button>Help</button>
    </nav>
    <section class="game">
      <div class="controls">
        <img class="number" src="https://dowdcvkfm95kf.cloudfront.net/minesweeper/numbers10.svg">
        <button type="button" class="reset">
          <img src="https://dowdcvkfm95kf.cloudfront.net/minesweeper/smiley.svg">
        </button>
        <img class="number" src="https://dowdcvkfm95kf.cloudfront.net/minesweeper/numbers29.svg">
      </div>
      <div class="board">
        {% for i in Array(100) %}
          <button class="space"></button>
        {% endfor %}
      </div>
    </div>
  </div>
</main>
