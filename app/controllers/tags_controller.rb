class TagsController < ApplicationController
	 def index
	#give something like {1 => 4} where 1 is tag_id and 4 is the occurence for the current_user
	@tag_counts = ActsAsTaggableOn::Tag.joins(:taggings).where(taggings: { taggable_type: "Task", taggable_id: current_user.task_ids }).group("tags.id").count
    @tags = ActsAsTaggableOn::Tag.all
  end

  def show
    @tag =  ActsAsTaggableOn::Tag.find(params[:id])
    @tasks = current_user.tasks.tagged_with(@tag.name)
  end
end
