module Refinery
  module Jobs
    module Admin
      class CategoriesController < ::Refinery::AdminController

        crudify :'refinery/jobs/category',
                :xhr_paging => true

      end
    end
  end
end
