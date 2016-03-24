Refinery::PagesController.class_eval do

  def home
    @jobs = Refinery::Jobs::Job.reorder("created_at DESC")
  end
  def thanks
  end
end