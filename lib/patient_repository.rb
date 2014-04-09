require 'patient'
require 'sequel'
require 'pg'

DB = Sequel.connect('postgres://ruaewdbowabkfw:-yeNSCd2mkJ7NK8j-2FIEaAXsP@ec2-54-243-50-213.compute-1.amazonaws.com/d6pkjb8c89kfe1')

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