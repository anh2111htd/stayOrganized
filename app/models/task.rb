class Task < ApplicationRecord
	acts_as_taggable 
	ActsAsTaggableOn.delimiter = ' ' 
	ActsAsTaggableOn.force_lowercase = true 
	belongs_to :user
end
