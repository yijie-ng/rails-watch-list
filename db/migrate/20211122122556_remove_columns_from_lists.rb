class RemoveColumnsFromLists < ActiveRecord::Migration[6.0]
  def change
    remove_column :lists, :image_url, :string
  end
end
