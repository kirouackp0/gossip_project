class AddSenderToPrivateMessages < ActiveRecord::Migration[7.0]
  def change
    add_reference :private_messages, :sender, foreign_key: {to_table: :users}
  end
end
