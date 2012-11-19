# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ActiveRecord::Base
    attr_accessible :name, :email, :password, :password_confirmation
    has_secure_password
    has_many :bookmarks
    
     before_save { |user| user.email = email.downcase }
    
     validates :name, presence: true, length: { maximum: 75, minimum: 2}
     VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
     validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
     uniqueness: { case_sensitive: false }
     validates :password, presence: true, length: {  maximum: 40, minimum: 7}
     validates :password_confirmation, presence: true
     private

end
