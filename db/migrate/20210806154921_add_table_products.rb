class AddTableProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.column(:name, :string)
      t.column(:cost, :integer)
      t.column(:origin, :string)

      t.timestamps()
    end
  end
end