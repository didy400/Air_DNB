class CreateDogs < ActiveRecord::Migration[5.2]
  def change
    create_table :dogs do |t|
      t.string :name
      t.belong_to :city

      t.timestamps
    end
  end
end
