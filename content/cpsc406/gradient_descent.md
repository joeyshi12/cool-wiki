---
title: "Gradient Descent"
subtitle: "[Return home](/)"
---

| Method                  | Problem                | $d_k$                   |
|-------------------------|------------------------|-------------------------|
| Gauss-Newton            | $\min_{x} \frac{1}{2}\|r(x)\|^2$ | $-(J_k^TJ_k)^{-1}(J_k^Tr_k)$ |
| Pure Newton             | General unconstrained  | $-H_k^{-1}g_k$          |
| Scaled Descent          | General unconstrained  | $-SS^Tg_k$              |
| Reduced Gradient Method | Linearly constrained   | $-(Z^TH_kZ)^{-1}Z^Tg_k$ |

## Descent Algorithm

- choose initial $x_0$
- for $k = 0,1,2,\dots$
    - compute $d_k$
    - linesearch on $f(x_k + \alpha d_k)$
    - $x_{k+1} = x_k + d_k$
    - if $\|\nabla f(x_k)\| < \epsilon$, then return

## Linesearch

- choose initial $t\leftarrow t_0$
- for $k = 0,1,2,\dots$
    - if $f(x_k + td) - f_k > \alpha t \nabla f_k^T d$, then return
    - $t\leftarrow \beta t$

![Linesearch](/assets/linesearch.svg)

## Convergence

**definition.** $f$ is $L$-**Lipschitz continuously differentiable** if

$$\|\nabla f(x) - \nabla f(y)\leq L\|x - y\|,\quad \forall x, y\in\mathbb{R}^n.$$

- $f(x) = \frac{1}{2}x^TAx + b^Tx \Rightarrow L = \|A\|_2 = \lambda_{\max}(A)$

**definition.** $f$ is $\mu$-**strongly convex** ($\mu > 0$) if

$$f(z) \geq f(x) + \nabla f(x)^T(z - x) + \frac{\mu}{2}\|z - x\|^2,\quad \forall x,z\in\mathbb{R}^n.$$

If $f$ is twice continuously differentiable, this is equivalent to

$$\lambda_{\min}(\nabla^2 f(x))\geq \mu,\quad \forall x\in\mathbb{R}^n.$$

**proposition.** Let $f$ be $L$-Lipschitz continuously differentiable.
Let $\{x_k\}$ be the iterates of gradient descent with constant stepsize $\alpha\in (0, 2/L)$.
Then, $\min_{k=0,\dots, T} \|\nabla f(x_k)\|^2 \leq = \frac{2(f_0 - f^*)}{\alpha T} = O(1/T)$.

Moreover, if $f$ is $\mu$-strongly convex, then the number of iterates
is at most $\frac{L}{\mu}\log\left( \frac{f(x_0) - f^*}{\epsilon} \right)$,
where $\epsilon :=$ tolerance.

## Stochastic Gradient Descent

Let $f(x) = \frac{1}{N}(f_{1}(x) + \cdots + f_{N}(x))$.
In stochastic gradient descent, at each iteration $k$,
we sample a batch of indices $i\in B_k$, $i\sim \mbox{Unif}\{1,\dots, N\}$
and approximate the gradient with $g_k = \frac{1}{|B_k|}\sum_{i\in B_k} \nabla f_i(x_k)$.

Compared to regular gradient descent, stochastic gradient descent
will require more iterations, but can be much more computationally cheaper.
