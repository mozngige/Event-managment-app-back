class CreateAbouts < ActiveRecord::Migration[7.0]
  def change
    create_table :abouts do |t|
      t.string :about_img
      t.string :about_description

      t.timestamps
    end
  end
end
