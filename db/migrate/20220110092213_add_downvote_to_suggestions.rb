class AddDownvoteToSuggestions < ActiveRecord::Migration[6.1]
  def change
    add_column :suggestions, :downvote, :integer, default: 0
  end
end
