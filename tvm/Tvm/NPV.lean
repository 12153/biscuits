-- Net Present Value

structure NetPresentValueProblem where
  principle : Float
  period    : Float
  inflow    : Float
  interest  : Float

-- NPV for single cash flow
def NPV (principle interest t inflow: Float) : Float :=
  -principle + (inflow * ((1 - (1 + interest) ^ (-t)) / interest))

-- fv = future value
def PV (fv r n : Float ) : Float :=
  fv / (1 + r) ^ n

-- NPV = ∑ [CF_t / (1 + r)^t] - Initial Investment

def NPVC (pv r t cft : Float) : Float :=
  (cft / (1 + r) ^ t) - pv

def n (cft : Float) := NPVC 100000 0.12 4 cft

def l : List Float := [40000, 50000, 60000, 70000]


