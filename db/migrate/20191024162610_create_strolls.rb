class CreateStrolls < ActiveRecord::Migration[6.0]
  def change
    create_table :strolls do |t|
      t.datetime :stroll_time
      t.belongs_to :dog , index: true
      t.belongs_to :dog_sitter , index: true
      t.belongs_to :city , index: true
      t.timestamps
    end
  end
end
