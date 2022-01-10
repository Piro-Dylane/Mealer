class AddRandomToMembers < ActiveRecord::Migration[6.1]
  def change
    add_column :members, :random, :boolean, default: false
  end
end
