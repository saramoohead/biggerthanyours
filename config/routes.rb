Rails.application.routes.draw do

resources :books do
end

   root "books#index"

end
