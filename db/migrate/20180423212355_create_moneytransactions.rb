class CreateMoneytransactions < ActiveRecord::Migration[5.1]
  def change
    create_table :moneytransactions do |t|
      t.string :title

      t.timestamps
    end
  end
end
