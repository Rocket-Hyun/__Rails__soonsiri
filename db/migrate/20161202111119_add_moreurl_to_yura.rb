class AddMoreurlToYura < ActiveRecord::Migration[5.0]
  def change
    add_column :yuras, :moreurl, :string
  end
end
