class CreateStudentPrefs < ActiveRecord::Migration
  def change
    create_table :student_prefs do |t|
      t.integer     :user_id
      t.date        :start_date
      t.date        :completion_date
      t.integer     :hrs_needed
      t.integer     :max_travel_distance
      t.boolean     :does_gender_matter
      t.integer     :creds_pursuing, array: true
      t.boolean     :want_addiction_cert_super
      t.boolean     :want_play_cert_super
      t.integer     :most_important_factors, array: true
    end
  end
end
