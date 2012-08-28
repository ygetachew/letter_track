class CreateLetters < ActiveRecord::Migration
  def change
    create_table :letters do |t|
      t.string :to
      t.string :reference_no
      t.string :your_reference_no
      t.date :issue_date
      t.string :from

      t.timestamps
    end
  end
end
