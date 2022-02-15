class CreateConsultations < ActiveRecord::Migration[6.1]
  def change
    create_table :consultations do |t|
      t.references :doctor, foreign_key: true
      t.references :patient, foreign_key: true
      t.date :start_on
      t.timestamps
    end
  end
end
