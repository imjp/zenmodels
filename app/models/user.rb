class User < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged
	after_create :create_profile
	 
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
 
  attr_accessible :name, :email, :gender, :password, :password_confirmation, :remember_me, :profile_attributes
	
	has_one :profile, :dependent => :destroy
	accepts_nested_attributes_for :profile
	
	default_scope :order => 'name'
	
	def create_profile
		build_profile.save(:validate => false)
	end	
	
	def next_user
		self.class.first(:conditions => ["name > ?", name], :order => "name asc")
	end

	def previous_user
		self.class.first(:conditions => ["name < ?", name], :order => "name desc")
	end
end
