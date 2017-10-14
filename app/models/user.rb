class User < ApplicationRecord
  has_secure_password
  # association
  has_many :trips
  # validations
  
  
end
