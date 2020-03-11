################################################################################
#
# Application Routes Configuration
#
# Copyright (c) 2019 The MITRE Corporation.  All rights reserved.
#
################################################################################

# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

Rails.application.routes.draw do

 
  resources :eobs,            only: [:index, :show]
  resources	:practitioners,		only: [:show]

  get '/home', to: 'dashboard#index'
  get '/dashboard', to: 'dashboard#index'
  get '/login', to: 'dashboard#login'

  root 'welcome#index'
end
