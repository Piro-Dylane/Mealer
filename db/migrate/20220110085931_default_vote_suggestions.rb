class DefaultVoteSuggestions < ActiveRecord::Migration[6.1]
  def change
    change_column_default :suggestions, :vote, 0
  end
end
