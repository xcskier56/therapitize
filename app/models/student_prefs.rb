# == Schema Information
#
# Table name: student_prefs
#
#  id                        :integer          not null, primary key
#  user_id                   :integer
#  start_date                :date
#  completion_date           :date
#  hrs_needed                :integer
#  max_travel_distance       :integer
#  does_gender_matter        :boolean
#  creds_pursuing            :integer          is an Array
#  want_addiction_cert_super :boolean
#  want_play_cert_super      :boolean
#  most_important_factors    :integer          is an Array
#

class StudentPrefs < ActiveRecord::Base


end
