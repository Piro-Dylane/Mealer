class ChangeVoteDefaultToSugggestions < ActiveRecord::Migration[6.1]
  def change
    change_column :suggestions, :vote, :integer, default: 0
  end
end
