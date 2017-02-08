module LocalDatabase
  class Railtie < Rails::Railtie
    initializer "local_database",{before:"active_record.initialize_database"} do |app|
      Rails.application.configure do
        if Rails.env == "production" then
          config.paths['config/database'] = "config/database.yml"
        else
          config.paths['config/database'] = "config/database.local.yml"
        end
      end
    end
  end
end
