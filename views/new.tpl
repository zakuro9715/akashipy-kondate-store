% rebase('base.tpl', title='New Kondate')

<form action="/new" method="POST" class="new-kondate-form">
  <div class="new-kondate-form__row">
    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
      <input class="mdl-textfield__input" type="text" id="name" name="name"  required />
      <label class="mdl-textfield__label" for="name">名前</label>
    </div>
  </div>
  <div class="new-kondate-form__row">
    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
      <input class="mdl-textfield__input" type="text" pattern="\d+" id="kcal" name="kcal" required />
      <label class="mdl-textfield__label" for="kcal">カロリー</label>
      <span class="mdl-textfield__error">自然数を入力してください</span>
    </div>
  </div>
  <div class="new-kondate-form__row">
    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
      <input class="mdl-textfield__input" type="text" id="image_url" name="image_url" />
      <label class="mdl-textfield__label" for="image_url">画像のURL</label>
    </div>
  </div>
  <div class="new-kondate-form__row">
    <input class="new-kondate-form__submit mdl-button mdl-js-button mdl-button--raised mdl-button--colored" type="submit"></input>
  </div>
</form>
