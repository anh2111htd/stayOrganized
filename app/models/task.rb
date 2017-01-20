class Task < ApplicationRecord
	acts_as_taggable 
	ActsAsTaggableOn.delimiter = ' ' 
	belongs_to :user
end
