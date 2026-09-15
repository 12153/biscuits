-- Net Present Value

-- structure NetPresentValueProblem where
--   principle : Float
--   period    : Float
--   inflow    : Float
--   interest  : Float

variable (cft fv npv principle rate inflow t n : Float)

-- NPV for single cash flow
def NPV := (inflow * ((1 - (1 + rate) ^ (-t)) / rate)) - principle

-- fv = future value
def PV  := fv / (1 + rate) ^ n

-- NPV = ∑ [CF_t / (1 + r)^t] - Initial Investment
def NPVC  := (cft / (1 + rate) ^ t) - principle


