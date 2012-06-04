MochaRails::Engine.routes.draw do
  root :to => "tests#index"
  controller :test do
    get "/list" => :list, :as => :mocha_tests_list
    get "/:suite" => :page, :as => :mocha_test_page
    get "/" => :index, :as => :mocha_tests_index
  end
end
