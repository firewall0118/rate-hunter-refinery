module Refinery
  module Jobs
    class Job < Refinery::Core::BaseModel
      self.table_name = 'refinery_jobs'

      attr_accessible :title, :content, :city, :price, :user_id, :job_link, :date, :position

      validates :title, :presence => true, :uniqueness => true
    end
  end
end
