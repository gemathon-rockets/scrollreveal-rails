module Scrollreveal
  module Rails
    class Engine < ::Rails::Engine
    	initializer "precompile", :group => :all do |app|
       	  app.config.assets.precompile << Proc.new{|path| path == "scrollReveal.js" }
        end
    end
  end
end