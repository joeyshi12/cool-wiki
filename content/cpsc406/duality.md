---
title: "Duality"
subtitle: "[Return home](/)"
---

**Primal Problem**. $\displaystyle \min_{x} c^T x$ subject to $Ax = b$, $x\geq 0$

**Relaxed Problem**. $\displaystyle \min_{x} c^T x + y^T(b - Ax)$ subject to $x\geq 0$

**Dual Problem**. $\displaystyle \max_{y} \left(\min_{x} c^T x + y^T(b - Ax)\right)$ subject to $x\geq 0$

The dual problem can be reformulated as
$\displaystyle \max_{y, z} b^T y$ subject to $A^T y + z = c$, $z\geq 0$.

**Weak-Duality Theorem**. If $x$ is primal feasible and $(y, z)$ is dual feasible, then
$c^Tx \geq b^T y$

**Proof**. $c^Tx = (A^Ty + z)^T x = y^TAx + z^T x = y^Tb + z^T x \geq y^T b$
since $x, z\geq 0$. Note that equality holds when $z^T x = 0$.

**Strong-Duality Theorem**. If an LP has an optimal solution, so does its dual
and the optimal values are equal.
