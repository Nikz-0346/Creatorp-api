class CreateUserProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :user_profiles do |t|
      t.references  :user, foreign_key: true, index: true
      t.string      :first_name
      t.string      :last_name
      t.datetime    :joined_date
      
      t.timestamps
    end
  end
end
