module Refinery
  module Jobs
    class Job < Refinery::Core::BaseModel
      self.table_name = 'refinery_jobs'

      attr_accessible :title, :description, :location, :category_id, :user_id, 
      :job_link, :position, :salary_cents, :salary_currency, :salary_end_cents, :salary_end_currency 

      validates :title, :presence => true, :uniqueness => true
      
      belongs_to :category

      monetize :salary_cents
      monetize :salary_end_cents

    end
  end
end
