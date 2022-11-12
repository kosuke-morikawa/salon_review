class CreateBeautyShops < ActiveRecord::Migration[5.2]
  def change
    create_table :beauty_shops do |t|
      t.string :name

      t.timestamps
    end
  end
end
