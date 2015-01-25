class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.references :recipe, index: true
      t.string :name
      t.number :amount
      t.string :unit

      t.timestamps null: false
    end
    add_foreign_key :ingredients, :recipes
  end
end
