# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#  created_at             :datetime
#  updated_at             :datetime
#  name                   :string(255)
#  first_name             :string(255)
#  last_name              :string(255)
#  phone                  :string(12)
#  change_theory          :text
#  address                :string(255)
#  zip                    :integer
#  gender                 :string(255)
#  admin                  :boolean
#  addiction_certified    :boolean
#  play_certified         :boolean
#  who_for_coffee         :text
#  education              :text
#  remote_supervision     :boolean
#  group_supervision      :boolean
#  dollars_per_hr         :integer
#  how_hear_about_us      :string(255)
#  prefs_id               :integer
#  type                   :string(255)
#

class Student < User
  has_one :prefs, class_name: :StudentPrefs

end
