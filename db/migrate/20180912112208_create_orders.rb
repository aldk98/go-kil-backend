class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.decimal :fare, precision: 8
      t.belongs_to :customer, null: false
      t.references :driver, index: true
      t.string :status
      t.jsonb :end_location, null: false
      t.jsonb :start_location, null: false
      t.timestamps
    end
  end
end
