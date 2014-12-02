class Reply < ActiveRecord::Base
  belongs_to :topic
  belongs_to :designer

  validates :content, presence: true
  validates :designer_id, presence: true
  validates :topic_id, presence: true
end
