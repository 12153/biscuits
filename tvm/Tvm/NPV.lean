-- Net Present Value

-- structure NetPresentValueProblem where
--   principle : Float
--   period    : Float
--   inflow    : Float
--   interest  : Float

variable (cft fv npv principle rate inflow t n : Float)

-- NPV for single cash flow
def m := 1 - ((1 + rate) ^ (-t)) / rate
def mi := inflow * (1 - ((1 + rate) ^ (-t)) / rate)
def NPV := (inflow * ((1 - (1 + rate) ^ (-t)) / rate)) - principle

-- fv = future value
def PV  := fv / (1 + rate) ^ n

#eval m 0.1 5
#eval mi 0.1 120000 5
#eval NPV 100000 0.1 120000 5

-- NPV = ∑ [CF_t / (1 + r)^t] - Initial Investment
def NPVC  := (cft / (1 + rate) ^ t) - principle



