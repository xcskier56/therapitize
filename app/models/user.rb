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
#  first_name             :string(255)
#  last_name              :string(255)
#  phone                  :string(10)
#  address                :string(255)
#  zip                    :integer
#  gender                 :string(255)
#  admin                  :boolean
#  street_address         :string(255)
#  latitude               :float
#  longitude              :float
#  user_type              :string(255)
#

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :preferences

#--------- Validations -------------------------------------------------------------------------------------------------------------#
  validates :first_name, :presence => true, :length => {minimum: 2, maximum: 50}, :on => :create
  validates :first_name, :presence => true, :length => {minimum: 2, maximum: 50}, :on => :update, :if => :first_name

  validates :last_name, :presence => true, :length => {minimum: 1, maximum: 50}, :on => :create
  validates :last_name, :presence => true, :length => {minimum: 1, maximum: 50}, :on => :update, :if => :last_name

  validates :password, :presence => true, :on => :create, :confirmation => true, :length => 6..128
  validates :password, :presence => true, :on => :update, :confirmation => true, :length => 6..128, :if => :password

  validates :password_confirmation, :presence => true, :on => :create
  validates :password_confirmation, :presence => true, :on => :update, :if => :password

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, uniqueness: {case_sensitive: false}, format: {with: VALID_EMAIL_REGEX}

  validates :phone, length: {maximum: 10}

  geocoded_by :address

  after_validation  :geocode
  before_save       :camelize_usertype
  before_save       :clean_phone, id: :normal_phone
  after_create      :build_prefs


  def address
    "#{street_address}, #{zip}"
  end

  def name
    "#{first_name} #{last_name}"
  end

  def details
    "#{user_type}Details".constantize.where(user_id: id)
  end

  def normal_phone
    phone
  end

  def normal_phone=(normal_phone)
    @normal_phone = normal_phone
  end

  private

  # Clean phone number
  # This is to remove all formatting before saving
  def clean_phone
    if @normal_phone
      self.phone = @normal_phone.gsub(/[^0-9]/, "").to_i
    end
  end

  def camelize_usertype
    self.user_type = self.user_type.camelize
  end

  def build_prefs
    Preferences.create user_id: id, type: "#{user_type}Preferences"
  end

end
