-- create doctors, patients, and appointments tables

class CreateDoctors < ActiveRecord::Migration[5.0]
  def change
    create_table :doctors do |t|
      t.string :family_name
      t.string :given_name
      t.string :gender
      t.date :born_on
      t.string :specialty

      t.timestamps
    end
  end
end


class CreatePatients < ActiveRecord::Migration[5.0]
  def change
    create_table :patients do |t|
      t.string :family_name
      t.string :given_name
      t.string :gender
      t.date :born_on
      t.string :insurance

      t.timestamps
    end
  end
end

class CreateAppointments < ActiveRecord::Migration[5.0]
  def change
    create_table :appointments do |t|
      t.date :date
      t.time :time
      t.text :comments

      t.timestamps
    end
  end
end
