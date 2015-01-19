class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.binary :email
      t.binary :password

      t.timestamps null: false
    end
  end
end
