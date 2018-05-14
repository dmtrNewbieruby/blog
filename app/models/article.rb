class Article < ApplicationRecord
	mount_uploader :picture, PictureUploader
	validates :author, :title, :body, :presence => true 
	# validates :author, :body, :numericality => true, :allow_nil => true
	# validates :title, :presence => { :message => "Title cannot be blank" }
	# validates :body, :presence => { :message => "Заполни поля!!!!" }
	# validates :author, :presence => { :message => "Заполни поля!!!!" }
end
