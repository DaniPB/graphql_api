class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.belongs_to :author
      t.string :title
      t.text :text
      t.datetime :published_at

      t.timestamps
    end
  end
end
