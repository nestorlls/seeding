class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :usersame
      t.string :email
      t.date :birth_date
      t.string :first_name
      t.string :last_name

      t.timestamps
    end
  end
end
