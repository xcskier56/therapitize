class CreateDatabase < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :phone, :string, limit: 10
    add_column :users, :address, :string
    add_column :users, :zip, :integer
    add_column :users, :gender, :string
    add_column :users, :admin, :boolean
    add_column :users, :street_address, :string
    add_column :users, :latitude, :float
    add_column :users, :longitude, :float
    add_column :users, :user_type, :string

    create_table :student_details do |t|
      t.integer     :student_preferences_id
      t.date        :start_date
      t.date        :completion_date
      t.integer     :hrs_needed

    end

    create_table :super_details do |t|
      t.integer  :supervisor_preferences_id
      t.integer  :license_number
      t.integer  :years_practicing
      t.integer  :current_candidates
      t.integer  :max_candidates   

    end

    create_table :preferences do |t|
      t.integer     :user_id
      t.string      :type

      t.string      :favorite_theorist
      t.boolean     :lsw
      t.boolean     :msw
      t.boolean     :licsw
      t.boolean     :lmft
      t.boolean     :lpcc
      t.boolean     :lp
      t.integer     :hourly_rate
      t.integer     :group_rate
      t.text        :primary_selection_factors, array: true
    end
  end
end
