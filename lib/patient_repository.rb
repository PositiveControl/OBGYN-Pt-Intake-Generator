require 'patient'
require 'sequel'
require 'pg'

DB = Sequel.connect(ENV['DATABASE_URL'] || 'postgres://kjlbwsbjncokzo:mVnz_sQJ2e9Z4LbxEvusls6I3q@ec2-54-83-196-217.compute-1.amazonaws.com:5432/da9j68q9s6tv5u')

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