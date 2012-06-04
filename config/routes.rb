MochaRails::Engine.routes.draw do
  root :to => "tests#list"
  controller :tests do
    get "/mocha" => :index, :as => :mocha_tests_index
    get "/:suite" => :page, :as => :mocha_test_page
    get "/" => :list, :as => :mocha_tests_list
  end
end
