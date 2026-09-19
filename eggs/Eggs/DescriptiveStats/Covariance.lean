-- (1 / n) ∑ (xᵢ - x_bar)(y_i - y_bar)
import Mathlib.Basic.Real.Basic
import Mathlib.Analysis.Real.Sqrt
import Mathlib.Tactic.Ring
import Eggs.DescriptiveStats.Mean
import Eggs.DescriptiveStats.Variance
open Real

noncomputable def Covariance (xs ys : List ℝ) : ℝ :=
  let x_bar := meanH xs
  let y_bar := meanH ys
  let s := xs.zip ys |>.map (λ (x, y) ↦ (x - x_bar) * (y - y_bar)) 
  s.sum / s.length

