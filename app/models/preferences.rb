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

class Preferences < ActiveRecord::Base
  extend Forwardable
  belongs_to :user, inverse_of: :preferences

  # http://nathanmlong.com/2013/05/better-single-table-inheritance/
  # Use in subclasses like:
  # delegate_details :amount_cents, :amount_currency, to: :details
  def self.delegate_details(*attributes)
    options = attributes.extract_options!
    association_name = options.fetch(:to) {
      raise ArgumentError.new 'You must specify the name of the details association'
    }

    define_method association_name do
      super() || send("build_#{association_name}")
    end

    attributes.each do |attribute_name|
      # Getter, setter, and boolean getter (in case it's a boolean attribute)
      def_instance_delegators association_name,
                              :"#{attribute_name}", :"#{attribute_name}=", :"#{attribute_name}?"
    end
  end
end
