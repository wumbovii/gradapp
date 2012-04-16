class CreateAttachments < ActiveRecord::Migration
  def change
    create_table :attachments do |t|
      t.string :subject
      t.text :content
	  t.references :user
      t.timestamps
    end
  end
end
