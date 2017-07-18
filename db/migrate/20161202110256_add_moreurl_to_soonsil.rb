class AddMoreurlToSoonsil < ActiveRecord::Migration[5.0]
  def change
    add_column :soonsils, :moreurl, :string
  end
end
