-- ∑ (x - x_bar)² / n

import Mathlib.Basic.Real.Basic
import Mathlib.Analysis.Real.Sqrt
import Mathlib.Tactic.Ring
import Eggs.DescriptiveStats.Mean
open Real

noncomputable def Variance (xs : List ℝ) : ℝ :=
  let μ := meanH xs
  ((xs.map (fun x => (x - μ)^2)).sum) / xs.length


