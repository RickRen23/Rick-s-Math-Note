
In order to do analysis on infinite-dimensional space, let us first do some examples.

> [!abstract] Statement 2.3.1.13
> $X$ is a normed space and $Y \subsetneq X$ is a closed subspace of $X$, $\varepsilon \in (0, 1) \subset \mathbb{R}$, $\exists x \in X$ s.t. $\|x\| = 1$ and $d(x, Y) \ge 1 - \varepsilon$.

**Prove:**
Take $x_0 \in X \setminus Y$, $Y$ closed $\implies$ denote $d = d(x_0, Y) > 0$, take $y_0 \in Y$ s.t. $\|x_0 - y_0\| < d\frac{1}{1 - \varepsilon}$.
Take $x = \frac{x_0 - y_0}{\|x_0 - y_0\|} \implies \|x\| = 1$.
Thus $\forall y \in Y$, $y_0 + \|x_0 - y_0\|y \in Y$,
$$\|x - y\| = \frac{\|x_0 - y_0 - \|x_0 - y_0\|y\|}{\|x_0 - y_0\|} = \frac{\|x_0 - (y_0 + \|x_0 - y_0\|y)\|}{\|x_0 - y_0\|} > \frac{d}{\|x_0 - y_0\|} \ge 1 - \varepsilon$$

---

> [!info] Convention
> $$\text{Compactness} \iff \text{EVT and Bolzano–Weierstrass characteristic}$$

First, we observe the proof of Bolzano–Weierstrass in $\mathbb{R}^n$, then try to extract the pattern, then extend it to infinite-dimensional space.

> [!abstract] Statement 2.3.1.14.1
> BW stands in $\mathbb{R}^1$ with bounded & complete.

**Prove:**
Take peak points:
- If there are infinitely many, they are non-increasing.
- If there are finitely many, choose points after last peak points, they are non-decreasing by choosing one greater than the other (this is ensured by peak point's definition).

> [!abstract] Statement 2.3.1.14.2
> BW stands in $\mathbb{R}^2$ with bounded & complete.

**Prove:**
As 2.3.1.14 showed, a sequence $(x_n, y_n)$ must be bounded $\implies (x_n)$ is bounded $\implies \exists$ convergent subsequence of $(x_n)$.
Thus, by $(x_{n_j})$ convergent, we can find a convergent subsequence of $(x_{n_j})$ s.t. the corresponding $(y_{n_j})$ also converges, as $(y_n)$ is bounded.
Thus, we have found a subsequence of $(x_{n_j}, y_{n_j})$ that converges, thus there is a subsequence of $(x_n, y_n)$ that converges.

> [!note] Remark 2.3.1.14.3
> The former proof used a new characteristic as convergence sequence's subsequence also converges in $\mathbb{R}^1$, known as Heine's theorem, but the essential part is still the definition of peak points.

---

> [!abstract] Statement 2.3.1.15
> Any cover of set $E$ has a finite subcover $\implies$ BW.

**Prove:**
Take cover of $E$ as $\bigcup_{e \in E} \{e\} = E$.
By statement, $\{e\}_{e \in E}$ is finite, thus $E$ is finite if only non-duplicate points are counted.
Thus, we have constant subsequences in $E$, we have BW of $E$.

---
> [!abstract] Statement 2.3.1.17
> Let $E \subset X$, $X$ a metric space. If any cover of $E$ by neighborhoods $N_r(x)$ ($x \in X$, $r>0$) has a finite subcover, then BW holds on $E$: every sequence in $E$ has a subsequence converging to a point of $E$.

**Prove:** (In this proof, we take neighbor's definition in metric space: $N_r(x) = \{y \in X : d(x,y) < r\}$)

**Step 1.** Every infinite set $S \subset E$ has at least one limit point in $E$
- **Prove:** Suppose $S \subset E$ is infinite and has no limit point in $E$
  Then each $e \in E$ is not a limit point of $S$, so $\exists r_e > 0$ s.t. $N_{r_e}(e) \cap S \subset \{e\}$
  (If $e \in S$, then $N_{r_e}(e) \cap S = \{e\}$; if $e \notin S$, then $N_{r_e}(e) \cap S = \varnothing$)
  Thus $\{N_{r_e}(e)\}_{e \in E}$ is a cover of $E$ by neighborhoods, so by assumption there are $e_1, \dots, e_m$ with $E \subset \bigcup_{k=1}^m N_{r_{e_k}}(e_k)$
  Each $N_{r_{e_k}}(e_k)$ contains at most one point of $S$, so $S \subset E$ contains at most $m$ points, contradicting that $S$ is infinite
  Therefore every infinite $S \subset E$ has a limit point in $E$

**Step 2.** Every sequence $\{x_n\} \subset E$ has a subsequence converging to a point of $E$.
- **Prove:** Consider the value set $V = \{x_n : n \in \mathbb{N}\}$
  - If $V$ is finite, by the pigeonhole principle some value $c \in E$ equals $x_n$ for infinitely many $n$. These indices give a constant subsequence, which converges to $c \in E$. (Similar to 2.3.1.15)
  - If $V$ is infinite, by Step 1, $V$ has a limit point $L \in E$
    In a metric space, every neighborhood of a limit point contains infinitely many points of $V$, hence $N_{1/j}(L)$ contains $x_n$ for infinitely many indices $n$, for every $j \in \mathbb{N}$.
    Thus we can choose inductively $n_1 < n_2 < \cdots$ with
    $$d(x_{n_j}, L) = \|x_{n_j} - L\| < \frac{1}{j}, \quad j \in \mathbb{N}$$
    (at step $j$, pick any $n_j > n_{j-1}$ among the infinitely many admissible indices).
    Then $x_{n_j} \to L \in E$

Therefore, if any neighborhood cover of $E$ has a finite subcover, then BW holds on $E$

---

> [!abstract] Statement 2.3.1.18
> BW $\implies$ any cover composed by open balls in metric space $X$ of set $E$ has a finite subcover.

**Prove:**
Suppose $E$ only has an infinite subcover $\bigcup_{i \in \mathbb{N}} A_i$.
As this cover is the smallest cover combination, $\forall I, \exists a_I \in A_I$, $a_I \notin \bigcup_{i \in \mathbb{N} \setminus \{I\}} A_i$.
$\forall I, J, I \neq J$, $a_I \in A_I, a_J \in A_J$, $d(a_I, a_J) = \|a_I - a_J\| < \min(r_I, r_J)$ as the radius of ball $A_I$ and ball $A_J$.
Thus, we take collection of $\{a_I \mid I \in \mathbb{N}\}$, $\forall I, a_I \in A_I$, $a_I \notin \bigcup_{i \in \mathbb{N} \setminus \{I\}} A_i$.
Denote this collection to be $\{x_n\}$ substitute $\{a_I\}$.
$$\forall x_i \in \{x_n\}, x_j \in \{x_n\}, \quad \|x_i - x_j\| \ge \min(r_1, r_2, \dots) \ge 0$$
This suggested either $\nexists \{x_{n_j}\}$ converging, or there is a subsequence $(r_{i_j}) \to 0$, as $r_{i_j} \neq 0$ by open ball's definition.

For scenario $(r_{n_j}) \to 0$, clearly $(x_{n_j})$ converges to $\lim_{n_j \to \infty} A_{n_j}$ as a point $\{a\}$, which then by definition does not belong to any set $A_{n_j}$. Thus this scenario's converging subsequence converged to point $a \notin E$, contradicts.

Therefore, BW $\implies$ any open ball cover of $E$ has at least one finite subcover.

---

> [!success] STATEMENT 2.3.2
> We define **compactness** to be the characteristic that any open-ball composed cover of set $E$ has at least one finite subcover.

**Prove:**
By 2.3.1.17 and 2.3.1.18, this trivially stands. **Q.E.D.**