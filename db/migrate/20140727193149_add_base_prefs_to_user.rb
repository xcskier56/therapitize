class AddBasePrefsToUser < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :phone, :string, limit: 12
    add_column :users, :change_theory, :text
    add_column :users, :address, :string
    add_column :users, :zip, :integer
    add_column :users, :gender, :string
    add_column :users, :admin, :boolean
    add_column :users, :addiction_certified, :boolean
    add_column :users, :play_certified, :boolean
    add_column :users, :who_for_coffee, :text
    add_column :users, :education, :text
    add_column :users, :remote_supervision, :boolean
    add_column :users, :group_supervision, :boolean
    add_column :users, :dollars_per_hr, :integer

    add_column :users, :how_hear_about_us, :string

    add_column :users, :prefs_id, :integer
  end
end
