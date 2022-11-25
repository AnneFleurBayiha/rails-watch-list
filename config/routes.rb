Rails.application.routes.draw do
  root to: 'lists#index'
  resources :lists do
    resources :bookmarks, only: [:new, :create, :destroy]
  end
end

# As a user, I can see all my movie lists
# As a user, I can create a movie list
# As a user, I can see the details of a movie list
# As a user, I can bookmark a movie inside a movie list
# As a user, I can destroy a bookmark
