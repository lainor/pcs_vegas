require 'rails/generators'

module Vegas
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.join(File.dirname(__FILE__), 'templates')
      
      def add_assets
        insert_into_file "app/assets/javascripts/application.js", "//= require vegas\n", :after => "jquery_ujs\n"
        insert_into_file "app/assets/stylesheets/application.css", " *= require vegas\n", :after => "require_self\n"
      end
    end
  end
end
