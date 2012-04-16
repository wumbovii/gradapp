class CreateDiscussions < ActiveRecord::Migration
  def change
    create_table :discussions do |t|
      t.string :subject
      t.references :forum
      t.timestamps
    end
  end
end
