-- fv = pv(1 + i / n) ^ (n * t)
-- fv = future value
-- pv = present value
-- i  = interest rate
-- n  = number of compounding periods per year
-- t  = total number of years

def add_interest (pv: Nat) (i: Nat) : Nat :=
  pv * (1 + i)

-- #eval add_interest 10 
