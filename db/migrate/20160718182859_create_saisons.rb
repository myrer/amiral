class CreateSaisons < ActiveRecord::Migration
  def change
    create_table :saisons do |t|
      t.string :annee
      t.string :ligue
      t.string :sport

      t.timestamps
    end
  end
end
