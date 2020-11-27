class AddForeignKeyToCategories < ActiveRecord::Migration[6.0]
  def change
    add_column :categories, :article_id, :integer
  end
end
