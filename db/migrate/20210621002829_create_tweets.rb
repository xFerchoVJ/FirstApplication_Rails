class CreateTweets < ActiveRecord::Migration[6.1]
  def change
    create_table :tweets do |t|
      #Tablas dentro del BD
      t.string :content
      t.timestamps
    end
  end
end
