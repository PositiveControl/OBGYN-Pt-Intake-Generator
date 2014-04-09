require 'spec_helper'
require 'patient_repository'
require 'patient'

describe Patient do

  describe 'creates a hash of patient info' do
    it 'should create a hash of patient' do
      patient = Patient.new(age: 23)
      expect(patient.attributes.delete_if {|key| key == :id}).to eq (patient.attributes)
    end
  end

  it 'should check to see if value is nil' do
    patient = Patient.new(age: nil)
    patient.validate
    expect(patient.age).to eq(nil)
  end

  it 'should replace empty strings with a nil value' do
    patient = Patient.new(age: '')
    expect(patient.validate.delete_if {|key| key == :id}).to eq(patient.validate)
  end

end