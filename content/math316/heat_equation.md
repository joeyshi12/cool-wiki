---
title: "Heat Equation"
subtitle: "[Return home](/)"
---

Consider a partial differential equation with the following
homogeneous boundary conditions and initial condition:

\begin{align}
\mathbf{PDE.}\quad &u_t(x, t) = \alpha^2u_{xx}(x, t),\quad 0 < x < L,\quad t > 0 \\
\mathbf{BC.}\quad &u(0, t) = u(L, t) = 0 \\
\mathbf{IC.}\quad &u(x, 0) = f(x)
\end{align}

## General Technique

A common technique used to solve differential equations
in this course is to assume the solution can be written as

$$u(x, t) = X(x)T(t)$$

\begin{align}
u_t &= \alpha^2 u_{xx} \\
X(x)T'(t) &= \alpha^2X''(x)T(t) \\
\frac{T'(t)}{\alpha^2 T(t)} &= \frac{X''(x)}{X(x)}
\end{align}

We can observe the LHS is independent of $x$
and the RHS is independent of $t$,
so this implies both sides must be constant. Thus,

$T'(t) = \alpha^2\lambda T(t)$ and $X''(x) = \lambda X(x)$.
Assuming that $u$ is a nontrivial solution,
we obtain $X(0) = X(L) = 0$ from our original boundary conditions.

We can show $X(x) = 0$ is the only solution for the case of $\lambda \geq 0$
by solving the characteristic equation and using our new boundary conditions.
For the case of $\lambda = -\mu^2 < 0$,

\begin{align}
X(x) &= c_1\cos(\mu x) + c_2\sin(\mu x) \\
X(0) &= c_1 = 0 \\
X(L) &= c_2\sin(\mu L) = 0
\end{align}

This implies $\mu L = \pi n$ for some integer $n$.
Thus, the nontrivial solutions for $X(x)$ can be written as
$X_n(x) = \sin\left(\frac{\pi n}{L}x\right)$ up to some scalar multiples.
The corresponding solution for $T_n(t)$ for $X_n(t)$
is $T_n(t) = e^{-(\alpha \pi n / L)^2 t}$.

Hence, our general solution is the linear combination

\begin{align}
u(x, t) &= \sum_{n=1}^{\infty} b_n e^{-(\alpha \pi n / L)^2 t}\sin\left(\frac{\pi n}{L}x\right) \\
u(x, 0) &= f(x) = \sum_{n=1}^{\infty} b_n\sin\left(\frac{\pi n}{L}x\right)
\end{align}

The above may look like a contradiction, but rest assured,
it is possible to find coefficients $b_n$, such that
the right hand series can *pointwise* converge to any arbitrary function $f(x)$.

