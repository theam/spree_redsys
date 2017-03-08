Spree::Core::Engine.routes.draw do

  resources :orders do
    resource :checkout, :controller => 'checkout' do
      member do
        get :redsys_checkout
        get :redsys_payment
      end
    end

    resource :redsys_callbacks, :controller => 'redsys_callbacks' do
      member do
        post :redsys_notify
        get :redsys_notify
        get :redsys_confirm
        post :redsys_confirm
      end
    end

  end

end



