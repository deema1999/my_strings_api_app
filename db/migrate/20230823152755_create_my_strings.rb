class CreateMyStrings < ActiveRecord::Migration[7.0]
  def change
    create_table :my_strings do |t|
      t.string :content

      t.timestamps
    end
  end
end
