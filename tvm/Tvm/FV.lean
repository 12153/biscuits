import Mathlib.Data.Rat.Defs
-- FV=PV(1 + (i / n)) ^ (n * t)
--
-- FV = Future value of money
-- PV = Present value of money
-- i  = Interest rate
-- n  = Number of compounding periods per year
-- t  = Number of years

def FutureValue (pv i n t : Float) : Float :=
  pv * ((1 + (i / n)) ^ (n * t))

def fv (f i n t : Float) : Float :=
  f / ((1 + (i / n)) ^ (n * t))

def si (pv i : ℚ) (t : Nat) : ℚ :=
  pv * (1 + i) ^ t

def si_r (pv i : ℚ) (t : Nat) : ℚ :=
  match t with
  | 0 => pv
  | a + 1 => si_r (pv * (1 + i)) i a

theorem si_r_zero (pv i : ℚ) : si_r pv i 0 = pv := by 
    rfl

theorem si_r_succ (pv i : ℚ) (t : ℕ) :
    si_r pv i (t + 1) = si_r (pv * (1 + i)) i t := by rfl

-- theorem to prove
-- pv * (1 + i) ^ (t + 1) = (pv * ( 1 + i)) * (1 + i) ^ t


