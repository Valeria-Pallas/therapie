class RenameImageColumnInArticles < ActiveRecord::Migration[6.0]
  def change
    rename_column :articles, :image, :banner_url
  end
end
