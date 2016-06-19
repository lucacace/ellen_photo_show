class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string :first_name
    	t.string :last_name
    	t.string :username
    	t.string :password

    	t.string :street
    	t.string :city
    	t.string :state
    	t.integer :zip_code

      	t.integer :phone_number
      	t.string :email

      	t.string :affiliation
      	t.string :local_newspaper

     	t.timestamps null: false #creates 2 columns created at / updated at
    end
  end
end
