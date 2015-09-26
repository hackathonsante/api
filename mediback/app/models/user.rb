class User < ActiveRecord::Base
  has_and_belongs_to_many :chats
  has_secure_password validations: false
end
