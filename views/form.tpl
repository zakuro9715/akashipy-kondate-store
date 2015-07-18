<form action="{{ action }}" method="POST" class="kondate-form">
  <div class="kondate-form__row">
    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
      <input class="mdl-textfield__input" type="text" id="name" name="name" value="{{ get('name', '') }}" required />
      <label class="mdl-textfield__label" for="name">名前</label>
    </div>
  </div>
  <div class="kondate-form__row">
    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
      <input class="mdl-textfield__input" type="text" pattern="\d+" id="kcal" name="kcal" value="{{ get('kcal', '') }}" required />
      <label class="mdl-textfield__label" for="kcal">カロリー</label>
      <span class="mdl-textfield__error">自然数を入力してください</span>
    </div>
  </div>
  <div class="kondate-form__row">
    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
      <input class="mdl-textfield__input" type="text" id="image_url" value="{{ get('image_url', '') }}" name="image_url" />
      <label class="mdl-textfield__label" for="image_url">画像のURL</label>
    </div>
  </div>
  <div class="kondate-form__row">
    <input class="kondate-form__submit mdl-button mdl-js-button mdl-button--raised mdl-button--colored" type="submit"></input>
  </div>
</form>
