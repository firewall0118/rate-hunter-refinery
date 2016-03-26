# This migration comes from refinery_jobs (originally 2)
class CreateJobsCategories < ActiveRecord::Migration

  def up
    create_table :refinery_jobs_categories do |t|
      t.string :title
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-jobs"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/jobs/categories"})
    end

    drop_table :refinery_jobs_categories

  end

end
