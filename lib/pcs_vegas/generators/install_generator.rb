require 'rails/generators'

module Vegas
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.join(File.dirname(__FILE__), 'templates')
      
      def add_assets
        insert_into_file "app/assets/javascripts/application.js", "//= require vegas\n", :before => "require_tree ."
        insert_into_file "app/assets/stylesheets/application.css", " *= require vegas\n", :before => "require_tree ."
      end
    end
  end
end
