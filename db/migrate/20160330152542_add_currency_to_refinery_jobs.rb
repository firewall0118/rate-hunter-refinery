class AddCurrencyToRefineryJobs < ActiveRecord::Migration
  def change
    add_money :refinery_jobs, :salary
  end
end
