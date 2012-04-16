class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :comment
	  t.references :discussion
	  t.references :school
	  t.references :user
      t.timestamps
    end
  end
end
