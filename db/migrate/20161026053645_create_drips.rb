class CreateDrips < ActiveRecord::Migration[5.0]
  def change
    create_table :drips do |t|
      t.string :title, default:""
      t.string :content, default:""
      t.string :image_url
      t.float :image_size, default:""
      t.string :source, default:""
      t.string :source_url, default:""

      t.timestamps
    end
  end
end
