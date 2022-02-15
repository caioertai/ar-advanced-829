class CreateInterns < ActiveRecord::Migration[6.1]
  def change
    create_table :interns do |t|
      t.string :name
      t.references :doctor, foreign_key: true
      # t.integer :doctor_id # NOT ENOUGH
      # Creates references to the doctors table
      # - a foreign key
      # - an index
      t.timestamps
    end
  end
end
