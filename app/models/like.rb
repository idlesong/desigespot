class Like < ActiveRecord::Base
  belongs_to :designer
  belongs_to :topic
end
