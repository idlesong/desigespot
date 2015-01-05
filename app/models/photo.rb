class Photo < ActiveRecord::Base
  belongs_to :design

  has_attached_file :image,
  :styles => { :medium => "300x300>", :thumb => "100x100>" },
  :default_url => "/images/:style/missing.png",
  :path => ":rails_root/public/images/:id/:filename",
  :url  => "/images/:id/:filename"

  do_not_validate_attachment_file_type :image
end
