class CreateSupervisorPrefs < ActiveRecord::Migration
  def change
    create_table :supervisor_prefs do |t|
      t.integer       :license_num
      t.integer       :years_of_supervision
      t.integer       :how_manu_students_want
      t.integer       :most_important_factors, array: true
      t.integer       :clinical_settings, array: true

      t.integer       :how_advertise, array: true
    end
  end
end
