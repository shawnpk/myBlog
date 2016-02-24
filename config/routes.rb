Rails.application.routes.draw do
	root 	'posts#index'

	get 	'about' 	=> 'pages#about'
	get 	'contact' => 'pages#contact'

	resources :posts do
		resources :comments
	end

	# get 		'posts'					=> 'posts#index', as: :posts
	# post 		'posts' 				=> 'posts#create'
	# get 		'posts/new' 		=> 'posts#new', as: :new_post
	# get 		'post/:id' 			=> 'posts#show', as: :post
	# patch		'post/:id'			=> 'posts#update'
	# delete 	'post/:id'			=> 'posts#destroy'
	# get 		'post/:id/edit'	=> 'posts#edit', as: :edit_post

end
