Refinery::PagesController.class_eval do

  def home
    @categories = Refinery::Jobs::Category.reorder("created_at ASC").includes(:jobs)
  end
end