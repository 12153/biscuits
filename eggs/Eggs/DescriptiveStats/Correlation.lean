-- correlation = cov(x, y) / (sd (x) * sd (y))

import Mathlib.Basic.Real.Basic
import Mathlib.Analysis.Real.Sqrt
import Eggs.DescriptiveStats.Mean
import Eggs.DescriptiveStats.Covariance
import Eggs.DescriptiveStats.Variance
import Eggs.DescriptiveStats.StandardDeviation
import Mathlib.Data.Nat.Prime.Defs
open Real

noncomputable def Correlation (xs ys : List ℝ) : ℝ :=
  Covariance xs ys / (StandardDeviation xs) * (StandardDeviation ys)

noncomputable def c (xs ys : List ℝ) : ℝ :=
  Covariance xs ys / √((Variance xs) * (Variance ys))

