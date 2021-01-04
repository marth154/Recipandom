class CreateFavorites < ActiveRecord::Migration[6.1]
  def change
    create_table :favorites do |t|
      t.integer :id_user
      t.integer :id_receipe

      t.timestamps
    end
  end
end
