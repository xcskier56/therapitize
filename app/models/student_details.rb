# == Schema Information
#
# Table name: student_details
#
#  id                     :integer          not null, primary key
#  student_preferences_id :integer
#  start_date             :date
#  completion_date        :date
#  hrs_needed             :integer
#

class StudentDetails < ActiveRecord::Base
  belongs_to :student_preferences, touch: true

end
