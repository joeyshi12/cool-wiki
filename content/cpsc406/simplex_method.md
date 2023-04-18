---
title: "Simplex Method"
subtitle: "[Return home](/)"
---

**problem**. Let $A\in\mathbb{R}^{m\times n}$ have full row rank.
Consider the LP in standard form:

$$\begin{cases}
\min_{x\in\mathbb{R}^n} c^T x \\
\text{subj. to}\quad Ax = b, x\geq 0
\end{cases}$$

## Simplex Algorithm

Start with a basic variables $\mathcal{B} = \{\beta_1,\ldots, \beta_m\}$
and nonbasic variables $\mathcal{N} = \{\eta_1,\ldots, \eta_{n-m}\}$.

For each iteration:

1. Solve $Bx_B = b$ for $x_B$
2. Solve $B^T y = c_B$ for $y$
3. Find all reduced costs $z_N = c_N - N^T y$ and choose $\eta_k$ corresponding to the variable of lowest cost
4. Solve $Bd_B = -a_{\eta_k}$ for the search direction $d_{B}$
5. Kick the basic variable with index $\displaystyle q = \underset{q\in\{1,\dots, m\}\mid d_{\beta_q} < 0}{\mbox{argmin}} -\frac{x_{\beta_q}}{d_{\beta_q}}$
