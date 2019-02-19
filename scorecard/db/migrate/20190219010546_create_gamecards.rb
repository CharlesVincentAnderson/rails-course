class CreateGamecards < ActiveRecord::Migration[5.2]
  def change
    create_table :gamecards do |t|
      t.integer :course_id
      t.integer :player1_id
      t.integer :player2_id
      t.integer :player3_id
      t.integer :player4_id
      t.integer :score1
      t.integer :score2
      t.integer :score3
      t.integer :score4
      t.integer :score5
      t.integer :score6
      t.integer :score7
      t.integer :score8
      t.integer :score9
      t.integer :score10
      t.integer :score11
      t.integer :score12
      t.integer :score13
      t.integer :score14
      t.integer :score15
      t.integer :score16
      t.integer :score17
      t.integer :score18
      t.timestamps
    end
  end
end
