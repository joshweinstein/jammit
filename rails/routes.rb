if defined?(Rails::Application)
  # Rails3 routes
  Rails.application.routes.draw do
    get "/#{Jammit.package_path}/:package.:extension",
      :to => 'jammit#package', :as => :jammit, :constraints => {
        # A hack to allow extension to include "."
        :extension => /.+/
      }
  end
end
