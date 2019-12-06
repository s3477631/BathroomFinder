class AddUserToUserlocation < ActiveRecord::Migration[5.2]
  def change
    add_reference :userlocations, :user, foreign_key: true
  end
end
