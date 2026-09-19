-- 
import Mathlib.Data.Real.Basic

noncomputable def Median (xs : List ℝ) (h : xs.length > 1) : ℝ :=
  let l := xs.length
  if l%2 == 1 then
    xs[(xs.length + 1) / 2]
  else
    let i := (l - 1) / 2
    (xs[i] + xs[i+1]) / 2

