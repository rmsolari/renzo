class AddNombreToComments < ActiveRecord::Migration[5.0]
  def change
    add_column :comments, :nombre, :text
  end
end
