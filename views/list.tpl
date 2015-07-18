% rebase('base.tpl', title='All Kondate')
<ul class="kondate-list">
  % for menu in menus:
  <li>
    <div class="kondate-card mdl-card mdl-shadow--2dp">
      <div class="kondate-card__title mdl-card__title mdl-card--expand"
        % if menu['image_url']:
          style="background-image: url({{ menu['image_url'] }})"
        % end
      >
      </div>
      <div class="mdl-card__supporting-text">
        {{ menu['kcal'] }} キロカロリー
      </div>
      <div class="kondate-card__name mdl-card__actions">
          {{ menu['name'] }}
      </div>
      <div class="kondate-card__update mdl-card__actions mdl-card--border">
        <a href="/{{ menu['id'] }}/update">
          更新する
        </a>
      </div>
    </div>
  </li>
  % end
</ul>
<a href='/new' class="right-bottom-button mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect mdl-button--colored">
  <i class="material-icons">add</i>
</a>
