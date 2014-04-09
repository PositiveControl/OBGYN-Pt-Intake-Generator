
Sequel.migration do
  up do
    create_table(:patients) do
      primary_key :id
      Integer :age, default: 0
      Integer :g, default: 0
      String :p, default: 0000
      Integer :at_weeks, default: 0
      Integer :at_days, default: 0
      Integer :by_weeks, default: 0
      Integer :by_days, default: 0
      String :ultrasound
      String :prenatal_care
      String :placenta
      String :group_b_strep
      String :one_hr_diabetes
      String :three_hr_diabetes
      String :history
      Integer :times_delivery_type, default: 0
      String :largest_baby_birthed, default: 0
      String :estimated_fetal_weight_lbs, default: 0
      String :estimated_fetal_weight_oz, default: 0
      String :efw_by
      String :sterile_vaginal_exam_time
      String :sve_dilation
      String :sve_effacement
      Integer :sve_station, default: 0
      String :comment
      Date :date
      DateTime :time
    end
  end

  down do
    drop_table(:patients)
  end
end