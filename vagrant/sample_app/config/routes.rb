Rails.application.routes.draw do

  get 'posts/new'
  get 'top' => 'root#top'
   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post 'posts' => 'posts#create'
end
