Refinery::Jobs::CategoriesController.class_eval do 

  def jobs
    @category = Refinery::Jobs::Category.find params[:id]
    @jobs = @category.jobs
  end
end