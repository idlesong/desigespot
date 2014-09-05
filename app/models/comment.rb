class Comment < ActiveRecord::Base
  belongs_to :design
  belongs_to :designer
end
