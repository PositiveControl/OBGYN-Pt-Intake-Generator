require 'spec_helper'
require 'patient_repository'
require 'patient'

describe PatientRepository do

  describe 'can access database and create row' do
    it 'should be able to create a new patient' do
      patient = Patient.new(age: 23)
      record_entry = PatientRepository.new
      record_entry.create(patient.validate)
      expect(record_entry.last_record.delete_if{|key| key == :id}).to eq (patient.validate)
    end
  end

  it 'finds a record by id' do
    patient = Patient.new(age: 25)
    record_entry = PatientRepository.new
    record_entry.create(patient.validate)
    expect(record_entry.find(29).delete_if{|key| key == :id}).to eq (patient.validate)
  #  find(row) - row value *must* be changed with highest/last row numbered to be entered.  Need to work on :id string interpolation.
  end
end


