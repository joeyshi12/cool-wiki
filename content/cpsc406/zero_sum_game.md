---
title: "2-Person, Zero-Sum Game"
subtitle: "[Return home](/)"
---

The following table represents the payoffs of Y to X
for each possible pairs of actions (left or right) provided by X and Y:

|                 | Left (Player X) | Right |
|-----------------|-----------------|-------|
| Left (Player Y) | -10             | 20    |
| Right           | 10              | -10   |

**Strategies**:

- Pure strategy: $x = (1, 0)$ and $y = (0, 1)$
- Mixed strategy: $x = (1/2, 1/2)$ and $y = (1/2, 1/2)$
    - Y expects to pay $P_Y = -10(1/4) + 20(1/4) + 10(1/4) - 10(1/4) = 2.5$
    - X expects to gain $P_X = -10(1/4) + 20(1/4) + 10(1/4) - 10(1/4) = 2.5$

**Goal**: Find strategies so that each player is happiest (i.e., players will not deviate)

**Saddle point**:

- X has maximized her profit
- Y has minimized his loss

## Matrix Games

Given 2 players X and Y, each player has $n$ and $m$ actions respectively.

- $A\in\mathbb{R}^{m\times n}$ are the payoffs of Y to X.
- $x\in\mathbb{R}^n$ is the distribution of actions X can choose.
- $y\in\mathbb{R}^m$ is the distributino of actions Y can choose.

$x$ is subject to $e^Tx = 1$, $x\geq 0$. Same with $y$.
The total expected payoff is $y^TAx = \sum_{i}\sum_{j} a_{ij}x_{j}y_{i}$.

## Player Y's Analysis

Suppose Y chooses $y$ as his strategy.
Then, X will choose $\max_{x} y^TAx$ to maximize his expected payoff.
Then, Y should choose to solve $\min_{y} \max_{x} y^T A x$.

Let $c := A^Ty$. Then, the inner problem for player X
simplifies to $\max_{x} c^Tx = \max_{j} c_j$.
Thus, Y's problem reduces to

$\displaystyle \min_{y} \|A^Ty\|_{\infty}$ subject to $e^Ty = 1$, $y\geq 0$.

We can reformulate this as a [linear program](/content/cpsc406/linear_programming.html)

$$\begin{cases}
    \displaystyle \min_{y,\nu} \nu \\
    A^T y\leq \nu e,\quad e^T y = 1,\quad y\geq 0
\end{cases}$$

## Player X's Analysis

Player X's analysis is symmetric to Y's analysis,
so player X's problem is

$\displaystyle \max_{x} \min_{i} (Ax)_{i}$ subject to $e^Tx = 1$, $x\geq 0$,
which can be reformulated as

$$\begin{cases}
    \displaystyle \max_{x,\lambda} \lambda \\
    Ax\geq \lambda e,\quad e^Tx = 1,\quad x\geq 0
\end{cases}$$

## Dual Problems

The worst case of X is if Y knows what X is going to choose.<br>
The worst case of Y is if X knows what Y is going to choose.<br>

**Minimax theorem.** X's worst-case expected win is Y's worst-case expected loss.

**Proof.** It is sufficient to show that the
[dual](/content/cpsc406/duality.html) of problem Y is problem X.

Introduce a slack variable $s\geq 0$, such that $A^Ty + s = \nu e$,
so $A^Ty - \nu e + Is = (A^T, -e, I)\cdot (y, \nu, s) = 0$.
Problem Y can be written in standard form with

$$c = \begin{bmatrix}
0 \\ 1 \\ 0
\end{bmatrix},\quad
\hat{A} = \begin{bmatrix}
A^T & -e & I \\
e^T & 0 & 0
\end{bmatrix},\quad
\hat{b} = \begin{bmatrix}
0 \\ 1
\end{bmatrix}.$$

The dual of problem Y is then

$\displaystyle \max_{u, \lambda} \hat{b}\cdot (u, \lambda) = \max_{u, \lambda} \lambda$
subject to $Au + \lambda e \leq 0$, $-e^Tu \leq 1$, $u \leq 0$.
WLOG, substitute $x = -u$. Then, the dual becomes

$\displaystyle \max_{x, \lambda} \lambda$
subject to $Ax \geq \lambda e$, $e^Tx = 1$, $x\geq 0$, which is problem X.

Hence, the optimal value of problem X is the same as the
optimal value of problem Y by [strong duality](/content/cpsc406/duality.html)
