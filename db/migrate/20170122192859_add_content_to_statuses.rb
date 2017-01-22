class AddContentToStatuses < ActiveRecord::Migration[5.0]
  def change
    add_column :statuses, :content, :text
  end
end
