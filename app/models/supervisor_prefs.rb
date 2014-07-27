# == Schema Information
#
# Table name: supervisor_prefs
#
#  id                     :integer          not null, primary key
#  license_num            :integer
#  years_of_supervision   :integer
#  how_manu_students_want :integer
#  most_important_factors :integer          is an Array
#  clinical_settings      :integer          is an Array
#  how_advertise          :integer          is an Array
#

class SupervisorPrefs < ActiveRecord::Base


end
