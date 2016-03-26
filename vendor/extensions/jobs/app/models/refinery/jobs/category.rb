module Refinery
  module Jobs
    class Category < Refinery::Core::BaseModel

      attr_accessible :title, :position

      validates :title, :presence => true, :uniqueness => true

      has_many :jobs
    end
  end
end
