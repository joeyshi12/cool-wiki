---
title: "Projected Gradient Descent"
subtitle: "[Return home](/)"
---

**problem**. $\displaystyle \min_{x\in{C}} f(x)$, where $f$ is continuously differentiable and $C$ is convex.

**definition**. $\mbox{proj}_{C}(x) = \underset{z\in{C}}{\mbox{argmin}} \frac{1}{2}\|z - x\|^2$

- $\mbox{proj}_{C}(x) = x$ if $x\in{C}$
- $\mbox{proj}(z)$ is unique since the objective is strictly convex
- $(x - z)\in N_{C}(x)$

**proof for (3)**. for the third property, let $f(z) = \frac{1}{2}\|z - x\|^2$.
If $z^* = \mbox{proj}_{C}(x)$,

$$f'(z^*; y - z^*) = \nabla f(z^*)^T(y - z^*) = (z^* - x)^T(y - z^*) \geq 0$$

for any feasible $y$ as $z^*$ is the global minimizer of $f$.
Then, $(x - z^*)^T(y - z^*)\leq 0$ for any $y\in{C}$,
so $(x - z^*)\in N_{C}(x)$ by definition.
