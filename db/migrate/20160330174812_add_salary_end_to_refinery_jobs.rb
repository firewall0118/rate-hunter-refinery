class AddSalaryEndToRefineryJobs < ActiveRecord::Migration
  def change
    add_money :refinery_jobs, :salary_end
  end
end
