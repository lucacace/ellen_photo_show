class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
    	t.string :name
    	t.string :date
    	t.string :type
    	t.string :sponser
    	t.string :jury

    	t.string :venue
    	t.string :street
    	t.string :city
    	t.string :state
    	t.integer :zip_code

    	t.string :name_chair_photography
    	t.integer :num_classes
    	t.string :num_placements
    	t.integer :photo_size_min
    	t.integer :photo_size_max


    end
  end
end



# name of show
# 				type of show
# 				location
# 				sponser
# 				registration period
# 				rules of show
# 				number of placements
# 				photo size min/max - must fall in range
