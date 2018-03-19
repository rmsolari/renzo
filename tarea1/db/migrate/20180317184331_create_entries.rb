class CreateEntries < ActiveRecord::Migration[5.0]
  def change
    create_table :entries do |t|
      t.references :user, foreign_key: true
      t.text :titulo
      t.text :bajada
      t.text :cuerpo
      t.timestamp :fecha

      t.timestamps
    end
  end
end
