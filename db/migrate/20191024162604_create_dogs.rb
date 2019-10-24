class CreateDogs < ActiveRecord::Migration[6.0]
  def change
    create_table :dogs do |t|
      t.string :dog_name
      t.string :breed_name
      t.string :gender
      t.belongs_to :city , index: true
      t.timestamps
    end
  end
end
