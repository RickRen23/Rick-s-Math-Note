---
tags:
  - real-analysis
  - sequence-limits
  - function-limits
  - cauchy-sequences
  - uniform-continuity
---

# Real Analysis Problem Set (Limits and Uniform Continuity)

## Problem 1 

Let $(a_n)$ be a sequence of real numbers satisfying
$$a_n^3 - a_n \to 0, \quad a_{n+1} - a_n \to 0.$$

- **(a)** Prove that if a subsequence $(a_{n_k})$ converges, its limit can only be $-1, 0,$ or $1$.
- **(b)** Give an example to show that if the condition $a_{n+1} - a_n \to 0$ is dropped, keeping only $a_n^3 - a_n \to 0$, $(a_n)$ may not converge.
- **(c)** Under both given conditions, prove that $(a_n)$ converges, and find all of its possible limits.

---

## Problem 2 

Let $(a_n)$ be a bounded sequence of real numbers. A number $L \in \mathbb{R}$ is called a **cluster point** (or **accumulation point**) of $(a_n)$ if there exists a strictly increasing sequence of positive integers $n_k$ such that
$$a_{n_k} \to L.$$

Prove that the following three statements are equivalent:
1. $(a_n)$ converges;
2. Every convergent subsequence of $(a_n)$ has the same limit;
3. $(a_n)$ has exactly one cluster point.

Furthermore, give an example to show that if "$(a_n)$ is bounded" is omitted, then (2) does not imply (1).

> [!tip] Hint
> The Bolzano–Weierstrass Theorem may be used.

---

## Problem 3 

Let $(a_n)$ be a sequence of real numbers. Prove that the following two statements are equivalent:
1. $(a_n)$ is a Cauchy sequence;
2. For every $\varepsilon > 0$, there exists $N$ such that for any strictly increasing sequence of positive integers
$$n_1 < n_2 < n_3 < \cdots,$$
whenever $n_1 \ge N$, we have
$$|a_{n_{k+1}} - a_{n_k}| < \varepsilon \quad (k = 1, 2, \dots).$$

> [!note] Note
> Here $N$ must be chosen uniformly for all subsequences and cannot depend on the choice of subsequence. This is a quantitative strengthening of "the difference between adjacent terms of every subsequence tends to $0$" in Problem 2.

---

## Problem 4 

Let $f: (a,b) \to \mathbb{R}$ and $x_0 \in (a,b)$. Prove that the following three statements are equivalent:
1. $\lim_{x \to x_0} f(x)$ exists and is finite;
2. For every $\varepsilon > 0$, there exists $\delta > 0$ such that for any $x, y \in (a,b)$, whenever
$$0 < |x - x_0| < \delta, \quad 0 < |y - x_0| < \delta,$$
we have
$$|f(x) - f(y)| < \varepsilon;$$
3. For any two sequences $(x_n), (y_n) \subset (a,b) \setminus \{x_0\}$, if
$$x_n \to x_0, \quad y_n \to x_0,$$
then
$$f(x_n) - f(y_n) \to 0.$$

Furthermore, give an example to show that even if (1) holds, $f$ can still be discontinuous at $x_0$.

---

## Problem 5 

Let $f: (0,1) \to \mathbb{R}$, without assuming beforehand that $f$ is continuous. $f$ is said to be **uniformly continuous** on $(0,1)$ if
$$\forall \varepsilon > 0 \, \exists \delta > 0, \quad \forall x, y \in (0,1), \, |x - y| < \delta \Rightarrow |f(x) - f(y)| < \varepsilon.$$

Prove that the following two statements are equivalent:
1. $f$ is uniformly continuous on $(0,1)$;
2. For every Cauchy sequence $(x_n) \subset (0,1)$, the sequence $(f(x_n))$ is also a Cauchy sequence.

Furthermore, give an example to show that if $(0,1)$ is replaced by $\mathbb{R}$, then (2) does not imply (1).

---

## Problem 6 

Let $f: (0,1) \to \mathbb{R}$ be continuous. Prove that the following three statements are equivalent:
1. $f$ is uniformly continuous on $(0,1)$ (defined as in Problem 5);
2. There exists a continuous function $F: [0,1] \to \mathbb{R}$ such that
$$F(x) = f(x) \quad (0 < x < 1);$$
3. For every Cauchy sequence $(x_n) \subset (0,1)$, the sequence $(f(x_n))$ converges (to a finite real number).

Furthermore, give an example to show that if "converges" in (3) is weakened to "is bounded", then (1) is no longer equivalent.

---

## Problem 7 

Let $f: [0, \infty) \to \mathbb{R}$ be uniformly continuous.

- **(a)** Prove that there exist constants $A, B > 0$ such that
$$|f(x)| \le Ax + B \quad (x \ge 0).$$
- **(b)** Give an example to show that there exists a continuous function $g: [0, \infty) \to \mathbb{R}$ satisfying linear growth
$$|g(x)| \le Ax + B,$$
yet $g$ is not uniformly continuous on $[0, \infty)$. Thus, the converse of (a) does not hold.

---

## Problem 8 

Let $f: [0, \infty) \to \mathbb{R}$ be uniformly continuous. If the sequence
$$(f(n))_{n=1}^\infty$$
converges, prove that
$$\lim_{x \to \infty} f(x)$$
exists, and
$$\lim_{x \to \infty} f(x) = \lim_{n \to \infty} f(n).$$

Furthermore, give an example to show that if "uniformly continuous" is weakened to "continuous", the conclusion fails to hold.

---

## Problem 9 

Let $f: [0, 1] \to \mathbb{R}$ be continuous and injective.

- **(a)** Prove that $f$ is strictly monotonic on $[0, 1]$.
- **(b)** Prove that $f([0, 1])$ is a closed interval, and the inverse function
$$f^{-1}: f([0, 1]) \to [0, 1]$$
is continuous.
- **(c)** Further prove that $f^{-1}$ is uniformly continuous on $f([0, 1])$.
- **(d)** Give an example to show that if "continuous" is omitted, (a) does not hold.

---

## Problem 10 

Let $f: \mathbb{R} \to \mathbb{R}$ be continuous, and suppose both $1$ and $\sqrt{2}$ are periods of $f$, i.e.,
$$f(x + 1) = f(x), \quad f(x + \sqrt{2}) = f(x) \quad (\forall x \in \mathbb{R}).$$

- **(a)** Prove that the set
$$G = \{m + n\sqrt{2} : m, n \in \mathbb{Z}\}$$
is dense in $\mathbb{R}$.
- **(b)** Prove that $f$ is a constant function.

> [!tip] Hint
> For part (a), consider the fractional part of $n\sqrt{2}$ and apply the Pigeonhole Principle.

