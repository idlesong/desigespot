class Designer < ActiveRecord::Base

  has_secure_password

  validates :name, presence: true, uniqueness: true

  has_many :designs
  has_many :topics
  has_many :replies

  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>", :thumbnail => "48x48>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

end
