-- standard deviation:
-- dataset
-- calculate mean
-- sqrt ((∑ data (data.map λ x ↦ (x - mean) ^ 2)) / data.length)
-- or 
-- sqrt ((∑ data (data.map λ x ↦ (x - mean) ^ 2)) * (1 / n - 1))
import Mathlib.Basic.Real.Basic
import Mathlib.Analysis.Real.Sqrt
import Eggs.DescriptiveStats.Mean
import Eggs.DescriptiveStats.Variance
open Real

noncomputable def StandardDeviation (xs : List ℝ) : ℝ :=
  √(Variance xs)

theorem no_deviation (x : ℝ) : StandardDeviation [x, x, x] = 0 := by
  dsimp [StandardDeviation]
  dsimp [Variance]
  dsimp [meanH]
  simp
  ring_nf
  rw [sqrt_zero]

theorem root_variance (x y z : ℝ) :
    StandardDeviation [x, y, z] = √ (Variance [x, y, z]) := by
      dsimp [StandardDeviation]



