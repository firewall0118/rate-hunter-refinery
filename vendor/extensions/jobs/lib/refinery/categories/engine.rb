module Refinery
  module Jobs
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Jobs

      engine_name :refinery_jobs

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "categories"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.jobs_admin_categories_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/jobs/category'
          }
          plugin.menu_match = %r{refinery/jobs/categories(/.*)?$}
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Categories)
      end
    end
  end
end
