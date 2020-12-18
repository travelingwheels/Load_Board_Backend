class CreateDirections < ActiveRecord::Migration[6.0]
  def change
    create_table :directions do |t|
      t.string :content
      t.belongs_to :load, null: false, foreign_key: true

      t.timestamps
    end
  end
end
