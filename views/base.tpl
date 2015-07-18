<!DOCTYPE html>
<html lang=ja>
<head>
  <meta charset="UTF-8">
  <title>{{ title + ' |Kondate Store' }}</title>
  <link rel="stylesheet" href="https://storage.googleapis.com/code.getmdl.io/1.0.0/material.indigo-pink.min.css">
  <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
  <link href='http://fonts.googleapis.com/css?family=Allerta+Stencil' rel='stylesheet' type='text/css'>
  <style>
    .page-title {
      font-size: 34px;
      font-family: 'Allerta Stencil', sans-serif;
      text-align: center;
    }
    .page-content {
      margin: 30px auto;
      max-width: 960px;
    }

    .right-bottom-button {
      position: absolute;
      right: 88px;
      bottom: 88px;
      z-index: 100000;
    }

    .footer__content {
      margin: 0 auto;
      text-align: center;
      width: 280px;
    }
    .footer__link {
      color: #9e9e9e;
      text-decoration: none;
    }

    .kondate-card {
      width: 140px;
      margin: 24px 12px;
    }
    .kondate-card__title {
      background: url('/static/akashipy.png') center center no-repeat;
      background-size: contain;
    }
    .kondate-card__name {
      text-align: center;
    }

    .kondate-list {
      padding: 0;
      list-style: none;

      display: flex;
      flex-wrap: wrap;
      justify-content: space-between;
    }

    .new-kondate-form {
      width: 300px;
      margin: 0 auto;
    }
    .new-kondate-form__row {
      margin: 32px 0;
    }
    .new-kondate-form__submit {
      width: 300px;
    }
  </style>
</head>
<body>
  <div class="mdl-layout mdl-js-layout mdl-layout--fixed-header">
    <header class="mdl-layout__header mdl-layout__header--scroll">
      <div class="header-row mdl-layout__header-row">
        <span class="header-title mdl-layout-title">Kondate Store</span>
        <div class="mdl-layout-spacer"></div>
        <div class="mdl-navigation">
          <a class="mdl-navigation__link" href="https://github.com/zakuro9715/akashipy-kondate-store">GitHub</a>
        </div>
      </div>
    </header>
    <main class="mdl-layout__content">
      <div class="page-content">
        <h1 class=page-title>{{ title }}</h1>
        {{ !base }}
      </div>
      <footer class="footer mdl-mini-footer">
        <div class="footer__content">
          <div>
            <a href="http://akashipy.connpass.com/" class="mdl-button mdl-js-button mdl-button--icon mdl-mini-footer__social-btn">
              <i class="material-icons">group</i>
            </a>
          </div>
          <div>
            <a class="footer__link" href="/">トップページ</a>
          </div>
        </div>
      </footer>
    </main>
  </div>
  <script src="https://storage.googleapis.com/code.getmdl.io/1.0.0/material.min.js"></script>
</body>
