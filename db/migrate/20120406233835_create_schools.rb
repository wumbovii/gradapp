class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :name
      t.string :password
      t.string :email

      t.timestamps
    end
  end
end
