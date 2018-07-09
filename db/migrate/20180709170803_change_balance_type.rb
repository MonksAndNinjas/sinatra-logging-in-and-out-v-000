class ChangeBalanceType < ActiveRecord::Migration[5.1]
  def change
    ALTER TABLE users MODIFY COLUMN balance decimal
  end
end
