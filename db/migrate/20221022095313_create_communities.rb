class CreateCommunities < ActiveRecord::Migration[7.0]
  def change
    create_table :communities do |t|
      t.string :community_description
      t.string :community_img

      t.timestamps
    end
  end
end
