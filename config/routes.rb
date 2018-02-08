Rails.application.routes.draw do
  root 'home#index'
  get 'menu/sample_menu'

  mount PdfjsViewer::Rails::Engine => "/pdfjs", as: 'pdfjs'

  get 'sample.pdf', :to => redirect('/public/docs/sample.pdf')

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
