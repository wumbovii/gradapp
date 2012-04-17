class AddTitleToForum < ActiveRecord::Migration
  def up
     add_column :forums, :title, :string
  end
  
  def down
    remove_column :forums, :title
  end
end
