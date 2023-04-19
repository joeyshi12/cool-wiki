---
title: "Linear Programming"
subtitle: "[Return home](/)"
---

**problem**. $\displaystyle \min_{x} c^T x$ subject to $Ax = b$, $x\geq 0$

## LP Geometry

**definition**. Let $\mathcal{P} = \{x \mid Ax \leq b\}$.

- $x$ is an **extreme point** of $\mathcal{P}$ if it is not a convex combination of other points in $\mathcal{P}$.
- $x$ is a **vertex** if there exists $c\neq 0$, such that $c^T x < c^T y$ for all $y\in\mathcal{P}$.
- $x$ is a **basic solution** if there exists a submatrix $\overline{A}$ of $A$ containing only active constraints w.r.t. $x$, such that one of the following equivalent conditions hold:
    - $\overline{A}$ is linearly indepedent
    - $\overline{A}x = \overline{b}$
    - $\mbox{rank}(\overline{A}) = n$

**theorem**. The following are equivalent statements:

- $x$ is an extreme point
- $x$ is a vertex
- $x$ is a basic feasible solution

## Simplex Algorithm

Start with a basic variables $\mathcal{B} = \{\beta_1,\ldots, \beta_m\}$
and nonbasic variables $\mathcal{N} = \{\eta_1,\ldots, \eta_{n-m}\}$.

For each iteration:

1. Solve $Bx_B = b$ for $x_B$
2. Solve $B^T y = c_B$ for $y$
3. Find all reduced costs $z_N = c_N - N^T y$ and choose $\eta_k$ corresponding to the variable of lowest cost
4. Solve $Bd_B = -a_{\eta_k}$ for the search direction $d_{B}$
5. Kick the basic variable with index $\displaystyle q = \underset{q\in\{1,\dots, m\}\mid d_{\beta_q} < 0}{\mbox{argmin}} -\frac{x_{\beta_q}}{d_{\beta_q}}$
