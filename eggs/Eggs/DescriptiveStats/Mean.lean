import Mathlib.Basic.Real.Basic
import Mathlib.Tactic.Ring
-- mean : (∑ xs) / n

noncomputable def meanH (xs : List ℝ) : ℝ := 
  (xs.sum) / xs.length

def mean (xs : List Float) : Float := 
  xs.sum / xs.length.toFloat

theorem mean_singleton (x : ℝ) : meanH [x] = x := by
  dsimp [meanH] 
  ring

theorem mean_same (x : ℝ) : meanH [x, x] = x := by
  simp [meanH]

theorem mean_three (x y z : ℝ) : meanH [x, y, z] = (x + y + z) / 3 := by
  dsimp [meanH]
  ring

theorem mean_add_con_three (x y z c : ℝ) :
  meanH [x + c, y + c, z + c] = meanH [x, y, z] + c := by
    simp [meanH]
    ring

theorem sum_map_add (xs : List ℝ) (c : ℝ) :
    (xs.map (fun x => x + c)).sum = xs.sum + xs.length * c := by
      induction xs with
      | nil => simp
      | cons x xs ih =>
        simp [ih]
        ring

theorem mean_add_constant (xs : List ℝ) (c : ℝ) (h : xs != []):
  meanH (xs.map λ x ↦ x + c) = (meanH xs) + c := by
    dsimp [meanH]
    rw [sum_map_add]

    have hlen : xs.length ≠ 0 := by
      cases xs
      · contradiction  
      · simp

    have hlenR : (xs.length : ℝ) ≠ 0 := by
      exact_mod_cast hlen

    simp
    rw [add_div]
    simp
    rw [mul_comm]
    rw [mul_div_assoc]
    rw [div_self]
    rw [mul_one]
    simp [hlenR]

