class Patient

  attr_accessor :age, :g, :p, :at, :decimal, :week, :vs, :pnc,
                :placenta, :gbs, :one_hr, :three_hr, :hx, :x,
                :largest, :efw, :by_2nd, :sve1, :sve2, :sve3,
                :comment

  def initialize(options)
    @age = options[:age]
    @g = options[:g]
    @p = options[:p]
    @at = options[:at]
    @decimal = options[:decimal]
    @week = options[:week]
    @vs = options[:vs]
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
    @sve1 = options[:sve1]
    @sve2 = options[:sve2]
    @sve3 = options[:sve3]
    @comment = options[:comment]
  end
end