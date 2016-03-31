Refinery::PagesController.class_eval do

  def home
    @categories = Refinery::Jobs::Category.reorder("created_at ASC")
    @jobs = Refinery::Jobs::Job.reorder("created_at DESC")
    # @currencies = Money::Currency.all
  end
end 