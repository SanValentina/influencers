class CreateInfluencers < ActiveRecord::Migration[5.2]
  def change
    create_table :influencers do |t|
      t.string :name
      t.string :social_media
      t.integer :followers
      t.integer :engagement

      t.timestamps
    end
  end
end
