class ListsMovies < ActiveRecord::Migration
  def change
    create_table(:lists_movies) do |t|
      t.belongs_to :movie, index: true
      t.belongs_to :list, index: true
      t.belongs_to :user, index: true
    end
  end
end
