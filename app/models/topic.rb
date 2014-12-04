class Topic < ActiveRecord::Base
  belongs_to :designer
  has_many :replies

  validates :designer_id, presence: true
end
