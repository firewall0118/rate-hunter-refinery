class CreateJobsJobs < ActiveRecord::Migration

  def up
    create_table :refinery_jobs do |t|
      t.string :title
      t.text :description
      t.string :location
      t.string :salary
      t.string :salary_end
      t.integer :category_id
      t.integer :user_id
      t.string :job_link
      t.string :currency
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-jobs"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/jobs/jobs"})
    end

    drop_table :refinery_jobs

  end

end
