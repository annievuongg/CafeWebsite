Rails.application.routes.draw do
  get 'bookings/book_a_table'
  get 'bookings/booked'

  root 'home#index'
  get 'menu/sample_menu'
  get 'contact/contact_us'
  resources :contact, only: [:new, :create]

  mount PdfjsViewer::Rails::Engine => "/pdfjs", as: 'pdfjs'

  get 'sample.pdf', :to => redirect('/public/docs/sample.pdf')

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
