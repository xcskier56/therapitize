# == Schema Information
#
# Table name: preferences
#
#  id                        :integer          not null, primary key
#  user_id                   :integer
#  type                      :string(255)
#  favorite_theorist         :string(255)
#  lsw                       :boolean
#  msw                       :boolean
#  licsw                     :boolean
#  lmft                      :boolean
#  lpcc                      :boolean
#  lp                        :boolean
#  hourly_rate               :integer
#  group_rate                :integer
#  primary_selection_factors :text             is an Array
#

class SupervisorPreferences < Preferences
  has_one :details, class_name: 'SuperDetails', autosave: true
  delegate_details :license_number, :years_practicing, :current_candidates, :max_candidates, to: :details

  default_scope { joins(:details) }

end
