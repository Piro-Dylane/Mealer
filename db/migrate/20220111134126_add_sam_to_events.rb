class AddSamToEvents < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :sam_id, :integer
  end
end
