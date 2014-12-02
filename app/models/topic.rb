class Topic < ActiveRecord::Base
  belongs_to :designer
  has_many :replies
end
