class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end

#FriendlyID Update
class User < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: [:slugged, :finders]
end

