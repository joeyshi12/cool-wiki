---
title: "Linear Constraints"
subtitle: "[Return home](/)"
---

**Problem**. Let $A\in\mathbb{R}^{m\times n}$ be underdetermined ($m\ll n$) and $A$ is full rank ($\mbox{rank}(A) = m$).

$$\begin{cases}
\displaystyle \min_{x\in\mathbb{R}^n} f(x) \\
\text{subj. to}\quad Ax = b
\end{cases}$$

The feasible set can be written as
$F = \{x \mid Ax = b\} = \{\overline{x} + z\mid z\in\mbox{null}(A)\}$,
where $\overline{x}$ is a particular solution to $Ax = b$.

Let $Z$ be the basis for $\mbox{null}(A)$.
Since $A$ is full rank, we know $Z$ is $n\times (n-m)$.
Thus, the problem above can be written as

$$\min_{p\in\mathbb{R}^{n-m}} f(\overline{x} + Zp).$$

We proceed to characterize the stationary points w.r.t. $p$:

$$\begin{align}
&\nabla_{p} f(\overline{x} + Zp) = Z^T\nabla f(\overline{x} + Zp) = 0 \\
\Leftrightarrow &\nabla f(\overline{x} + Zp)\in\mbox{null}(Z^T) \\
\Leftrightarrow &\nabla f(\overline{x} + Zp)\in\mbox{range}(A^T).
\end{align}$$

Thus, if $x^*$ is a solution to the linearly constrained problem, then

$$\begin{cases}
\nabla f(x^*) = A^Ty\quad \text{for some } y\in\mathbb{R}^{m} \\
Ax^* = b
\end{cases}$$

$y$ is often called the **Lagrange Multiplier**.

## Second-order Necessary Conditions

$p^*$ is a local minimizer of $f_Z(p) := f(\overline{x} = Zp)$ if

$$\nabla^2 f_z(p^*) = Z^T\nabla^2 f(\overline{x} + Zp^*)Z\succeq 0.$$

## Reduced Gradient Method (WIP)

The problem reduces down to something analogous to the
scaled descent algorithm with $Z$ as the 'scaling' matrix (although $Z$ is not a scaling matrix since $Z$ is not necessarily positive definite).

1. Start with a feasible $x_0$.
2. The descent directions at each iteration is the solution to $Z^T\nabla^2 f(x_k) Z p_k = -Z^T \nabla f(x_k)$.
