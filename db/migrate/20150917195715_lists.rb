class Lists < ActiveRecord::Migration
  def change
    create_table(:lists) do |t|
      t.string :title
      t.string :description

      t.timestamp
    end
  end
end
