class AddUserReferenceToFans < ActiveRecord::Migration[5.2]
  def change
    add_reference :fans, :user, index: true
  end
end
