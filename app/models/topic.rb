class Topic < ActiveRecord::Base
  belongs_to :designer
  has_many :replies
  has_many :likes

  validates :designer_id, presence: true

  def liked_by(designer)
    self.likes.build
  end


end
