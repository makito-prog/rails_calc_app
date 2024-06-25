Rails.application.routes.draw do
  get 'calculations/new'
  post 'calculations/create'
  root 'calculations#new'
end
