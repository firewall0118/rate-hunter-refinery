class AddJobLinkToRefineryJobs < ActiveRecord::Migration
  def change
    add_column :refinery_jobs, :job_link, :string
  end
end
