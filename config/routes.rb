Rails.application.routes.draw do
  root(
    as: :redirected_root,
    to: redirect("/#{I18n.default_locale}")
  )

  scope("(:locale)", locale: /#{I18n.available_locales.join('|')}/) do
    get("cards", to: "cards#index")
    root(to: "home#index")
  end
end
