Rails.application.routes.draw do

  get "/songs", controller: "songs", action: "index"
  post "/songs" => "songs#create"
  get "/songs/:id" => "songs#show"
  patch "songs/:id" => "songs#update"
  delete "songs/:id" => "songs#destroy"

end
