class CreateSoonsils < ActiveRecord::Migration[5.0]
  def change
    create_table :soonsils do |t|
      t.string :title
      t.string :content
      t.string :image_url, default:""
      t.float :image_size, default:""
      t.float :order

      t.timestamps
    end
  end
end
