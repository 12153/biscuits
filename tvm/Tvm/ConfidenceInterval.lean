import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.Data.Real.Basic

open Real

structure ConfidenceIntervalProblem where
  mean   : Float
  dev    : Float
  n      : Float
  hn     : 0 < n
  zScore : Float

-- variable (mean : Float) (dev : Float) (n : {r : Float // 0 < r}) (zScore : Float) 
-- variable (mean : ℝ) (dev : ℝ) (n : {r : ℝ // 0 < r}) (zScore : ℝ) 

namespace ConfidenceIntervalProblem

  def standardError (p : ConfidenceIntervalProblem) :=
    p.mean / (Float.sqrt p.dev)


end ConfidenceIntervalProblem


