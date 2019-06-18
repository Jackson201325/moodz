class CreateIdols < ActiveRecord::Migration[5.2]
  def change
    create_table :idols do |t|

      t.timestamps
    end
  end
end
