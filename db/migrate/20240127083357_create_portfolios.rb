class CreatePortfolios < ActiveRecord::Migration[7.0]
  def change
    create_table :portfolios do |t|
      t.string :title
      t.text :content
      t.string :image

      t.timestamps
    end
  end
end
