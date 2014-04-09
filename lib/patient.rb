require 'patient_repository'

class Patient

  ATTRIBUTES = [
      :age, :g, :p, :at_weeks, :at_days, :by_weeks, :by_days, :ultrasound, :prenatal_care,
      :placenta, :group_b_strep, :one_hr_diabetes, :three_hr_diabetes, :history, :times_delivery_type,
      :largest_baby_birthed, :estimated_fetal_weight_lbs, :estimated_fetal_weight_oz, :efw_by,
      :sterile_vaginal_exam_time, :sve_dilation, :sve_effacement, :sve_station, :comment, :date, :time
  ]

  attr_accessor *ATTRIBUTES

  def initialize(options)
    ATTRIBUTES.each do |attr|
      instance_variable_set(:"@#{attr}", options[attr])
    end
  end

  def attributes
    attributes_to_hash
  end

  def validate
    remove_empty_strings_from_hash
  end

  private

  def attributes_to_hash
    Hash[ATTRIBUTES.map { |name| [name, instance_variable_get("@#{name}")] }]
  end

  def remove_empty_strings_from_hash
    attributes_to_hash.delete_if { |key, value| value == '' || value == '--' }
  end

end
