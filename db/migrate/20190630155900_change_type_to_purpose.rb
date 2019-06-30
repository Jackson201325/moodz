class ChangeTypeToPurpose < ActiveRecord::Migration[5.2]
  def change
    rename_column :subscribers, :type, :purpose
  end
end
