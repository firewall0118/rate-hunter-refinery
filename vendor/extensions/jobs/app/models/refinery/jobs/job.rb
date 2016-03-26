module Refinery
  module Jobs
    class Job < Refinery::Core::BaseModel
      self.table_name = 'refinery_jobs'

      attr_accessible :title, :description, :location, :salary, :category_id, :user_id, :job_link, :position

      validates :title, :presence => true, :uniqueness => true
      
      belongs_to :category

    end
  end
end
