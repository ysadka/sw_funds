class CreateTrips < ActiveRecord::Migration[5.0]
  def change
    create_table :trips do |t|
    	t.string     :first_name, 		  null: false
    	t.string     :last_name,         null: false
    	t.string     :confirmation_code, null: false
    	t.integer    :funds_remaining
    	t.date 	     :exp_date
        t.belongs_to :user, index: true

    	t.timestamps
    end
  end
end
