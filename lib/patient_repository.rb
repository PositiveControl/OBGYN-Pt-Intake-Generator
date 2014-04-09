require 'patient'
require 'sequel'
require 'pg'

DB = Sequel.connect('postgres://gschool_user:password@localhost/patient_repository')

class PatientRepository

  def create(patient_info)
    patient_table.insert(patient_info)
  end

  def find(id)
    patient_table[:id => id]
  end

  def last_record
    patient_table.order(:id).last
  end

  private

  def patient_table
    DB[:patients]
  end

end