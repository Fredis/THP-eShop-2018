require 'test_helper'

class StripesControllerTest < ActionDispatch::IntegrationTest
  RSpec.describe PlansController, type: :controller do
    login_admin

  describe 'GET #index' do
      it 'returns http success' do
        get :index
        expect(response).to have_http_status(:success)
        expect(assigns(:plans).count).to eq(3)
      end
    end

  describe 'GET #show' do
      let(:plan) { @stripe_test_helper.create_plan(id: 'free', amount: 0) }
      before(:each) do
        PaymentServices::Stripe::Subscription::CreationService.(
          user: @admin,
          account: @admin.account,
          plan: plan.id
        )
        @admin.reload
      end

  it 'returns http success starter token' do
        @stripe_test_helper.create_plan(id: 'starter', amount: 10)
        cus =
          Stripe::Customer
          .retrieve(@admin.account.subscription.stripe_customer_id)
        card = cus.sources.create(source: @stripe_test_helper.generate_card_token)
        @admin.account.subscription.update(stripe_token: card.id)
        get :show, params: {id: 'starter'}
        expect(response).to have_http_status(:redirect)
        expect(flash[:notice]).to eq 'Plan was updated successfully.'
      end
end
