class CreateUserhs < ActiveRecord::Migration
  def change
    create_table :userhs do |t|
      t.string :email
      t.string :fname
      t.string :lname
      t.string :url1
      t.string :qrhash

      t.timestamps
    end
  end
end
