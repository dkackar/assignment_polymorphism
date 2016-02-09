class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.integer   :parent_id
      t.string    :parent_type
      t.string    :title
      t.text      :body
      t.timestamps null: false
    end

    add_index :articles, [:parent_type, :parent_id]
  end
end
