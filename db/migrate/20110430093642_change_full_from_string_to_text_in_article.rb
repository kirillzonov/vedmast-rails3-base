class ChangeFullFromStringToTextInArticle < ActiveRecord::Migration
  def self.up
    remove_column :articles, :full
    add_column :articles, :full, :text
  end

  def self.down
    remove_column :articles, :full
    add_column :articles, :full, :string
  end
end
