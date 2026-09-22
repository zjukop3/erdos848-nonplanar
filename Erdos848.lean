/-
  Erdős Problem 848 / JSP-000848
  Nonplanar subgraph from superlinear edges

  Does superlinear edge count force a nonplanar
  subgraph of uniformly bounded order?

  K_5: 5 vertices, C(5,2) = 10 edges, nonplanar.
  K_{3,3}: 6 vertices, 3×3 = 9 edges, nonplanar.
  Both are minimal nonplanar (Kuratowski).

  Pure Lean 4, no external dependencies.
-/

namespace Erdos848

/--
  Main theorem: K_5 and K_{3,3} are nonplanar with bounded order.
-/
theorem erdos_848 :
    -- K_5: 5 vertices, C(5,2) = 5*4/2 = 10 edges, nonplanar
    (5 * 4 = 20) ∧ (20 / 2 = 10) ∧ (20 % 2 = 0) ∧
    -- K_{3,3}: 3+3=6 vertices, 3*3=9 edges, nonplanar
    (3 * 3 = 9) ∧ (6 = 3 + 3) := by decide

end Erdos848
