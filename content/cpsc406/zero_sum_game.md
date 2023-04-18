---
title: "2-Person, Zero-Sum Game"
subtitle: "[Return home](/)"
---

|                 | Left (Player X) | Right |
|-----------------|-----------------|-------|
| Left (Player Y) | -10             | 20    |
| Right           | 10              | -10   |

The elements of the game are

- Players
- Actions & Strategies
- Payoffs

**Strategies**:

- Pure strategy: $x = (1, 0)$ and $y = (0, 1)$
- Mixed strategy: $x = (1/2, 1/2$ and $y = (1/2, 1/2)$
    - Y expects $P_Y = -10(1/4) + 20(1/4) + 10(1/4) - 10(1/4) = 2.5$
    - X expects $P_X = 2.5$

**Goal**: Find strategies so that each player is happiest (not to deviate)

**Saddle point**:

- X has maximized her profit
- Y has minimized his loss

## Matrix Games

Still 2 players X and Y. But now each player has n and m actions respectively.

- $A\in\mathbb{R}^{m\times n}$ are payoffs.
- $x\in\mathbb{R}^n$ is the distribution of actions X can choose.
- $y\in\mathbb{R}^m$ is the distributino of actions Y can choose.

$x$ is subject to $e^Tx = 1$, $x\geq 0$. Same with $y$.
The total expected payoff is $y^TAx = \sum_{i}\sum_{j} a_{ij}x_{j}y_{i}$.

## Player Y's Analysis

Suppose Y chooses $y$ as his strategy.
Then, X will choose $\max_{x} y^TAx$ to maximize his expected payoff.
Then, Y should choose $y$ to $\min_{y} \max_{x} y^T A x$.

## Solving for Y's Strategy

Y: $\min_{y}\min_{x} y^T x$

Suppose $y$ is given.
X's problem is $\max_{x} (A^Ty)^Tx = \max_{x} y^TAx$ subject to $e^Tx = 1$, $x\geq 0$.
Let $c := A^Ty$.
Then, $\max_{x} c^Tx$ is simply the largest entry in $c$,
so we can write $\max_{x} c^Tx = \max_{j} c_j$.

Then, Y's problem reduces to
$\min_{y} \max_{j} (y^TA)_j$ subject to $e^Ty = 1$, $y\geq 0$.

Reformulate as an LP:

$$
\begin{cases}
    \min_{y, \nu} \nu \\
    ve\geq A^T y,\quad e^T y = 1,\quad y\geq 0
\end{cases}
$$

## Player X's Analysis

Player X's analysis is symmetric to Y's analysis.
Suppose X chooses x as her strategy.
Similarly, we get Y's inner problem as $\min_{y} y^TAx$
and then X should choose
$\max_{x} \min_{i} (Ax)_{i}$ subject to $e^T x = 1$, $x\geq 0$.

$$
\begin{cases}
    \max{y, \lambda} \lambda \\
    \lambda e\leq Ax,\quad e^Tx = 1,\quad x\geq 0
\end{cases}
$$

## Summary

The worst case of X is if Y knows what X is going to choose.
The worst case of Y is if X knows what Y is going to choose.
MiniMax Theorem says X's worst-case expected win is Y's worst-case expected loss.
In particular, it says that

Weak duality: $P_{X}^* \leq P_{Y}^*$

Strong duality: $P_{X}^* = P_{Y}^*$
