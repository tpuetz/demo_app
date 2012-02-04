class Micorpost < ActiveRecord::Base
	belongs_to :users

	validates :content, :length => { :maximum => 140 }
end
