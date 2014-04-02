class Patient

  attr_accessor :age, :g, :p, :at, :week, :us, :pnc,
                :placenta, :gbs, :one_hr, :three_hr, :hx, :x,
                :largest, :efw, :by_2nd, :sve_time, :sve1, :sve2, :sve3,
                :comment

  def initialize(options)
    @age = options[:age]
    @g = options[:g]
    @p = options[:p]
    @at = options[:at]
    @week = options[:week]
    @us = options[:us]
    @pnc = options[:pnc]
    @placenta = options[:placenta]
    @gbs = options[:gbs]
    @one_hr = options[:one_hr]
    @three_hr = options[:three_hr]
    @hx = options[:hx]
    @x = options[:x]
    @largest = options[:largest]
    @efw = options[:efw]
    @by_2nd = options[:by_2nd]
    @sve_time = options[:sve_time]
    @sve1 = options[:sve1]
    @sve2 = options[:sve2]
    @sve3 = options[:sve3]
    @comment = options[:comment]
  end
end