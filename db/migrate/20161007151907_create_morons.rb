class CreateMorons < ActiveRecord::Migration
  def change
    create_table :morons do |t|
      t.string :imgur
      t.string :description

      t.timestamps null: false
    end
  end
end
