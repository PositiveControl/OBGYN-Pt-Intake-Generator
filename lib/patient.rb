class Patient

  ATTRIBUTES = [
      :age, :g, :p, :at, :week, :us, :pnc,
      :placenta, :gbs, :one_hr, :three_hr, :hx, :x,
      :largest, :efw, :by_2nd, :sve_time, :sve1, :sve2, :sve3,
      :sve_time_2, :sve1_2, :sve2_2, :sve3_2,
      :sve_time_3, :sve1_3, :sve2_3, :sve3_3,
      :comment
  ]

  attr_accessor *ATTRIBUTES

  def initialize(options)
    ATTRIBUTES.each do |attr|
      instance_variable_set(:"@#{attr}", options[attr])
    end
  end

end