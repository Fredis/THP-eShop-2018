Rails.configuration.stripe = {
  :publishable_key => Rails.application.secrets.stripe_publishable_key
  :secret_key      => Rails.application.secrets.stripe_secret_key
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]


STRIPE_PUBLISHABLE_KEY="pk_test_VGLsgnw5FKJ4dPRkXlu3nDQa"
STRIPE_SECRET_KEY="sk_test_7o4kiSPw52FQ2Xo7DPobOUE6"


Rails.configuration.stripe.secret_key = Rails.application.credentials.stripe[:dev_secret_key]
Rails.configuration.stripe.publishable_key = Rails.application.credentials.stripe[:dev_publishable_key]
