class AddTextoToComments < ActiveRecord::Migration[5.0]
  def change
    add_column :comments, :texto, :text
  end
end
