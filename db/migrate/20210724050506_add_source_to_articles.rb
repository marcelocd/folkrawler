class AddSourceToArticles < ActiveRecord::Migration[6.1]
  def change
    add_column :articles, :source, :integer, default: 0
  end
end
