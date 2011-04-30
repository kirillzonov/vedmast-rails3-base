class AddPicAndCategoryAndMaterialAndLittlePicAndSizeToArticle < ActiveRecord::Migration
  def self.up
    add_column :articles, :pic, :string
    add_column :articles, :category_id, :integer
    add_column :articles, :material, :string
    add_column :articles, :little_pic, :string
    add_column :articles, :size, :string
  end

  def self.down
    remove_column :articles, :size
    remove_column :articles, :little_pic
    remove_column :articles, :material
    remove_column :articles, :category_id
    remove_column :articles, :pic
  end
end
