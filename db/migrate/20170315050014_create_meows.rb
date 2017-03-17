class CreateMeows < ActiveRecord::Migration[5.0]
  def change
    create_table :meows do |t|
      t.string :content
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
