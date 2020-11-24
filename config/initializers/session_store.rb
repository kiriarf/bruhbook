if Rails.env == "production"
  Rails.application.config.session_store :cookie_store, key: "_bruhbook", domain: "bruhbook-api.herokuapp.com"
else
  Rails.application.config.session_store :cookie_store, key: "_bruhbook"
end