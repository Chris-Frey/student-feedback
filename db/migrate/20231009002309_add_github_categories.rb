class AddGithubCategories < ActiveRecord::Migration[7.0]
  def change
    add_column :reviews, :bio, :integer
    add_column :reviews, :profile_image, :integer
    add_column :reviews, :pinned_repositories, :integer
    add_column :reviews, :contributions, :integer
    add_column :reviews, :repository_list, :integer
    rename_column :reviews, :title, :report_title
    remove_column :reviews, :overall_score
  end
end
