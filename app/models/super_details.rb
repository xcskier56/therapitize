# == Schema Information
#
# Table name: super_details
#
#  id                        :integer          not null, primary key
#  supervisor_preferences_id :integer
#  license_number            :integer
#  years_practicing          :integer
#  current_candidates        :integer
#  max_candidates            :integer
#

class SuperDetails < ActiveRecord::Base
  belongs_to :supervisor_preferences, touch: true

end
