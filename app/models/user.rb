class User < ApplicationRecord
  has_secure_password
  has_many :trips
  
  validates :username, :email, :password, presence: true
  validates :username, :email, uniqueness: true
  validates :username, length: {minimum: 3}
  validates :password, length: {minimum: 5}
  validates :bio, length: {maximum: 140}


  
  has_attached_file :avatar,
                    :styles => { :medium => "150x150>", :thumb => "44x44#" },
                    :default_url => "/images/default.png"

  validates_attachment :avatar, :presence => true,
                       :content_type => { :content_type => ["image/jpeg", "image/gif", "image/png"] },
                       :size => { :in => 0..1000.kilobytes }
  
end
