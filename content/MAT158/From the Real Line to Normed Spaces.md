---
title: From the Real Line to Normed Spaces
subtitle: the necessity of compactness
tags:
  - math/analysis
  - topology
  - compactness
date: 2026-11-07
aliases:
  - From the Real Line to Normed Spaces
---

# From the Real Line to Normed Spaces

*the necessity of compactness*

Reading notes · Rudin, *Principles of Mathematical Analysis*, Chapters 2–4

> **Abstract.** On the interval $[a,b]$ the theorems of one-variable analysis — the intermediate value theorem, the extreme value theorem, Bolzano–Weierstrass, Heine–Borel, uniform continuity — arrive as a package, and it is easy to believe that they all express one and the same property of the interval. They do not. The intermediate value theorem expresses **connectedness**; the other four express **compactness**. On the real line the two properties happen to be carried by the same sets, so they travel together. As soon as one passes to normed spaces of infinite dimension they separate: convexity still gives connectedness, and the intermediate value theorem survives for free, but the closed unit ball is no longer compact, and the extreme value theorem, Bolzano–Weierstrass and Heine–Borel all fail. Compactness is the hypothesis that has to be isolated and then re-established — by weak topologies, by equicontinuity, by completeness, or by minimizing sequences — before analysis can continue. These notes follow that passage and end with the structural reason why compactness is unavoidable

# 1 The real line: what $[a,b]$ really gives us

A first course in analysis proves a cluster of theorems about continuous functions on the interval $[a,b]$: the intermediate value theorem, the extreme value theorem, the Bolzano–Weierstrass theorem, the Heine–Borel theorem, and the uniform continuity of continuous functions. They are usually proved one after another, each with its own trick, and it is natural to file them away as "the theorems that hold on $[a,b]$". The purpose of this section is to separate them: to identify, for each theorem, the property of $[a,b]$ that it actually uses

The answer is that the cluster splits into two groups. One theorem — the intermediate value theorem — uses only **connectedness**. The other four use **compactness**. On the real line the interval $[a,b]$ is both connected and compact, which is why the split is invisible at first

## 1.1 Completeness: the engine

Everything on the real line rests on one axiom

**Completeness axiom.** Every nonempty subset of $\mathbb{R}$ that is bounded above has a least upper bound in $\mathbb{R}$

Two consequences are used constantly. The first is the nested interval principle

**Theorem (nested intervals).** Let $I_{1} \supseteq I_{2} \supseteq \dots$ be closed intervals with lengths tending to $0$. Then $\bigcap_{k=1}^\infty I_{k}$ consists of exactly one point

*Proof.* Write $I_{k} = [a_{k}, b_{k}]$. The sequence $(a_{k})$ is nondecreasing and bounded above by $b_{1}$, so $a = \sup_{k} a_{k}$ exists; similarly $b = \inf_{k} b_{k}$ exists. Since $a_{k} \le b_{j}$ for all $k,j$, we get $a \le b$. Any point of the intersection lies in $[a,b]$, and $b - a \le b_{k} - a_{k} \to 0$, so $a = b$ and the intersection is $\{a\}$

The second is the Bolzano–Weierstrass theorem, which is the bisection method in disguise

**Theorem (Bolzano–Weierstrass).** Every bounded sequence in $\mathbb{R}$ has a convergent subsequence

*Proof.* Let $(x_{n})$ be a sequence in $[a,b]$. Bisect $[a,b]$; at least one half contains $x_{n}$ for infinitely many $n$. Call that half $I_{1}$, bisect it, and continue. This produces closed intervals $I_{1} \supseteq I_{2} \supseteq \dots$ with $\left|I_{k}\right| = 2^{-k}(b-a)$, each containing infinitely many terms of the sequence. By the nested interval theorem there is a point $x$ with $\cap_{k} I_{k} = \{x\}$. Choose $n_{1} < n_{2} < \dots$ inductively with $x_{n_{k}} \in I_{k}$. Then $\left|x_{n_{k}} - x\right| \le 2^{-k}(b-a) \to 0$, so $x_{n_{k}} \to x$

Nothing in this proof uses anything but completeness and the order structure of $\mathbb{R}$. In particular, no notion of compactness has appeared yet

## 1.2 Connectedness and the intermediate value theorem

**Definition (connectedness).** A metric space $X$ is **connected** if it cannot be written as $X = U \cup V$ with $U$ and $V$ nonempty, open in $X$, and disjoint

**Theorem (IVT ⟺ connectedness).** A metric space $X$ is connected if and only if every continuous $f: X \to \mathbb{R}$ has the intermediate value property: whenever $a, b \in X$ and $c$ lies between $f(a)$ and $f(b)$, there is $x \in X$ with $f(x) = c$

*Proof.* ($\Rightarrow$) Suppose $f(a) < c < f(b)$ and $c$ is not a value of $f$. Then

$$
U = f^{-1}((-\infty, c)), \quad V = f^{-1}((c, \infty))
$$

are nonempty (they contain $a$ and $b$), open (because $f$ is continuous), disjoint, and they cover $X$. This is a separation of $X$, contradiction

($\leftarrow$) Suppose $X = U \cup V$ is a separation. Define $f: X \to \mathbb{R}$ by $f = 1$ on $U$ and $f = 0$ on $V$. Since $U$ and $V$ are open and complementary, $f$ is continuous: each point has a neighbourhood on which $f$ is constant. But $f$ takes the values $0$ and $1$ and never $1/2$, contradicting the intermediate value property

**Corollary.** Every interval in $\mathbb{R}$ is connected. Hence the intermediate value theorem holds on any interval

*Remark.* The intermediate value theorem is a theorem about connectedness, not about compactness. The space $\mathbb{R}$ is connected but not compact, and IVT holds on $\mathbb{R}$. The space $[0,1] \cup [2,3]$ is compact but not connected, and IVT fails on it: the continuous function which is $0$ on $[0,1]$ and $1$ on $[2,3]$ takes neither value in between

## 1.3 Compactness of an interval and the extreme value theorem

**Definition (open cover; compact).** An **open cover** of a set $K$ in a metric space $X$ is a family $\mathcal{U}$ of open subsets of $X$ with $K \subseteq \bigcup \mathcal{U}$. The set $K$ is **compact** if every open cover of $K$ has a finite subcover

**Theorem (Heine–Borel for intervals).** The interval $[a,b]$ is compact

*Proof.* Suppose, for contradiction, that some open cover $\mathcal{U}$ of $[a,b]$ has no finite subcover. Bisect $[a,b]$; at least one half is not covered by finitely many members of $\mathcal{U}$. Call it $I_{1}$ and continue: this gives closed intervals $I_{1} \supseteq I_{2} \supseteq \dots$ with $\left|I_{k}\right| = 2^{-k}(b-a)$, none of which is covered by finitely many members of $\mathcal{U}$. By the nested interval theorem there is a point $x$ with $\cap_{k} I_{k} = \{x\}$. Choose $U \in \mathcal{U}$ with $x \in U$. Since $U$ is open, $B(x,r) \subseteq U$ for some $r > 0$. For $k$ large, $I_{k} \subseteq B(x,r) \subseteq U$, so the single member $U$ covers $I_{k}$, contradiction

**Theorem (extreme value theorem, EVT).** If $K$ is compact and $f: K \to \mathbb{R}$ is continuous, then $f$ is bounded and attains its maximum and minimum on $K$

*Proof.* Let $M = \sup f(K) \in (-\infty, \infty]$. If $M = \infty$, choose $x_{n} \in K$ with $f(x_{n}) \ge n$. By sequential compactness of $K$ (proved below, and independent of this theorem) there is a subsequence $x_{n_{k}} \to x \in K$; continuity gives $f(x) = \lim_{k} f(x_{n_{k}}) \ge \lim_{k} n_{k} = \infty$, impossible. Hence $M < \infty$. Choose $x_{n}$ with $f(x_{n}) \to M$; pass to a convergent subsequence $x_{n_{k}} \to x$. Then $f(x) = \lim_{k} f(x_{n_{k}}) = M$, so the maximum is attained. The argument for the minimum is the same with $-f$

Notice the shape of the proof: boundedness and attainment both come from the possibility of extracting a convergent subsequence. That possibility is exactly what compactness provides

## 1.4 Sequential compactness and Heine–Borel in $\mathbb{R}^{n}$

**Definition (sequential compactness).** A metric space $K$ is **sequentially compact** if every sequence in $K$ has a subsequence converging to a point of $K$

**Theorem (compact ⟺ sequentially compact).** For metric spaces, compactness and sequential compactness are equivalent

*Proof.* ($\Rightarrow$) Let $K$ be compact and let $(x_{n})$ be a sequence in $K$ with no convergent subsequence. Then no point of $K$ is a cluster point of the set $S = \{x_{n}\}$, so $S$ is closed, and each $x_{n}$ is isolated in $S$: there is $r_{n} > 0$ with $B(x_{n}, r_{n}) \cap S = \{x_{n}\}$. The family consisting of $K \setminus S$ and the balls $B(x_{n}, r_{n})$, $n = 1,2,\dots$, is an open cover of $K$. A finite subcover uses only finitely many of the balls, and therefore misses all but finitely many points of $S$, contradiction

($\leftarrow$) Suppose $K$ is sequentially compact. First, $K$ is complete: a Cauchy sequence has a convergent subsequence, and a Cauchy sequence with a convergent subsequence converges. Second, $K$ is totally bounded: if not, there is $\varepsilon > 0$ and an infinite set $\{x_{n}\}$ with $d(x_{n}, x_{m}) \ge \varepsilon$ for $n \ne m$, and such a sequence has no Cauchy subsequence. Now let $\mathcal{U}$ be an open cover of $K$ with no finite subcover. Since $K$ is totally bounded, $K$ is covered by finitely many balls of radius $1$; one of them, call it $B_{1}$, is not covered by finitely many members of $\mathcal{U}$. Inductively choose a ball $B_{k+1} \subseteq B_{k}$ of radius $2^{-k}$ that is not covered by finitely many members of $\mathcal{U}$, and pick $x_{k} \in B_{k}$. Then $(x_{k})$ is Cauchy, hence converges to some $x \in K$. Choose $U \in \mathcal{U}$ with $x \in U$ and $r > 0$ with $B(x,r) \subseteq U$. For $k$ large, $B_{k} \subseteq B(x,r) \subseteq U$, so $U$ alone covers $B_{k}$, contradiction

**Corollary (Heine–Borel in ℝⁿ).** A subset of $\mathbb{R}^{n}$ is compact if and only if it is closed and bounded

*Proof.* If $K \subseteq \mathbb{R}^{n}$ is bounded, every sequence in $K$ has a convergent subsequence (apply Bolzano–Weierstrass to each coordinate); if $K$ is also closed, the limit lies in $K$, so $K$ is sequentially compact, hence compact. Conversely, a compact set is bounded (cover it by balls of radius $1$ centred at a fixed point and extract a finite subcover) and closed (a limit point of $K$ is the limit of a sequence in $K$, which has a subsequence converging inside $K$)

## 1.5 Uniform continuity

**Definition (uniform continuity).** $f: X \to Y$ is **uniformly continuous** if for every $\varepsilon > 0$ there is $\delta > 0$ such that $d(x,x') < \delta$ implies $d(f(x), f(x')) < \varepsilon$, for all $x, x' \in X$

**Theorem.** A continuous function on a compact metric space is uniformly continuous

*Proof.* Suppose not. Then there is $\varepsilon > 0$ and sequences $x_{n}, y_{n}$ with $d(x_{n}, y_{n}) < 1/n$ but $d(f(x_{n}), f(y_{n})) \ge \varepsilon$. By sequential compactness, a subsequence $x_{n_{k}}$ converges to some $x$; then $y_{n_{k}} \to x$ as well. Continuity at $x$ gives $f(x_{n_{k}}) \to f(x)$ and $f(y_{n_{k}}) \to f(x)$, so $d(f(x_{n_{k}}), f(y_{n_{k}})) \to 0$, contradiction

The compactness hypothesis cannot be dropped: $f(x) = 1/x$ is continuous on $(0,1]$ but not uniformly continuous there, and $f(x) = x^{2}$ is continuous on $\mathbb{R}$ but not uniformly continuous

## 1.6 The package, unpacked

The theorems of the first section can now be sorted by the property each one actually uses

| **Theorem** | **Property it uses** | **Where it fails** |
| --- | --- | --- |
| IVT | connectedness | $[0,1] \cup [2,3]$ (compact, not connected) |
| EVT | compactness | $(0,1)$ or $\mathbb{R}$ (connected, not compact) |
| Bolzano–Weierstrass | compactness of closed bounded sets | the unit ball in infinite dimension |
| Heine–Borel | compactness in $\mathbb{R}^{n}$ | the unit ball in infinite dimension |
| Uniform continuity | compactness | $1/x$ on $(0,1)$ |
| Completeness | completeness of the metric | $\mathbb{Q}$ |

The decisive observation is this. In $\mathbb{R}^{n}$, "closed and bounded" is **equivalent** to compactness — that is the content of Heine–Borel. The phrase "closed and bounded" therefore looks like a single hypothesis, but it is the conjunction of two different things: closedness (a topological condition) and boundedness (a metric condition). Their equivalence with compactness is a finite-dimensional accident. In infinite dimensions it collapses, and with it collapse EVT, Bolzano–Weierstrass, Heine–Borel and uniform continuity. What has to be carried to infinite dimensions is not "closed and bounded" but the property that made the equivalence true in the first place

That property is compactness

# 2 Normed spaces: the same theorems on a different ground

A normed space is the simplest infinite-dimensional setting in which the questions of the first section can be asked. Nothing in the definition of a norm mentions dimension; the finite-dimensional theorems, however, use dimension in an essential way, through Heine–Borel. This section isolates exactly where dimension enters

## 2.1 Norms and Banach spaces

**Definition (normed space).** A **norm** on a real vector space $X$ is a function $\left\|\cdot\right\|: X \to [0, \infty)$ such that

$$
\left\|x\right\| = 0 \iff x = 0, \quad \left\|\lambda x\right\| = \left|\lambda\right| \left\|x\right\|, \quad \left\|x + y\right\| \le \left\|x\right\| + \left\|y\right\|
$$

for all $x, y \in X$ and $\lambda \in \mathbb{R}$. The pair $(X, \left\|\cdot\right\|)$ is a **normed space**; the formula $d(x,y) = \left\|x - y\right\|$ makes it a metric space. If this metric is complete, $X$ is a **Banach space**

Standard examples are $\mathbb{R}^{n}$ with any of the norms $\left\|x\right\|_{p} = (\sum \left|x_{i}\right|^{p})^{1/p}$, the sequence spaces

$$
\ell^{p} = \{(x_{n}) : \sum_{n=1}^\infty \left|x_{n}\right|^{p} < \infty\}, \quad \left\|x\right\|_{p} = (\sum_{n=1}^\infty \left|x_{n}\right|^{p})^{1/p}
$$

the space $c_{0}$ of sequences tending to $0$ with the sup norm, the space $C(K)$ of continuous functions on a compact space with the sup norm, and the spaces $L^{p}$. The space $C^{1}([0,1])$ with the sup norm is not complete; with the norm $\left\|f\right\| = \left\|f\right\|_\infty + \left\|f'\right\|_\infty$ it is complete. Completeness is a property of the norm, not of the underlying vector space

Every normed space is a metric space, so all topological notions — open, closed, compact, connected — make sense in it. The point of the next two subsections is that two of these notions, connectedness and compactness, behave completely differently when the dimension becomes infinite

## 2.2 Finite dimension: nothing changes

**Theorem (equivalence of norms).** On a finite-dimensional vector space, any two norms are equivalent: there are constants $c, C > 0$ with $c \left\|x\right\|_{1} \le \left\|x\right\|_{2} \le C \left\|x\right\|_{1}$ for all $x$

*Proof.* It suffices to compare an arbitrary norm $\left\|\cdot\right\|$ with $\left\|\cdot\right\|_\infty$ relative to a basis. The unit sphere $S = \{x : \left\|x\right\|_\infty = 1\}$ is compact by Heine–Borel in $\mathbb{R}^{n}$, and $x \mapsto \left\|x\right\|$ is continuous and never zero on $S$. Hence it has a minimum $m > 0$ and a maximum $M$ on $S$, and homogeneity gives $m \left\|x\right\|_\infty \le \left\|x\right\| \le M \left\|x\right\|_\infty$ for all $x$

**Corollary (Heine–Borel, finite dimension).** In a finite-dimensional normed space, a set is compact if and only if it is closed and bounded. Consequently EVT, Bolzano–Weierstrass and uniform continuity hold on every closed bounded set

*Proof.* Boundedness gives a closed bounded box in coordinates, which is compact by the Heine–Borel theorem in $\mathbb{R}^{n}$; a closed subset of a compact set is compact. The converse is as in $\mathbb{R}^{n}$

In finite dimension, then, the whole package of Section 1 survives verbatim. The dimension enters only through the compactness of the unit sphere

## 2.3 Infinite dimension: Heine–Borel fails

The finite-dimensional proof used the compactness of the unit sphere. In infinite dimension the unit sphere is never compact, and the failure propagates to everything

**Theorem (Riesz lemma).** Let $Y$ be a closed subspace of a normed space $X$ with $Y \ne X$, and let $0 < \varepsilon < 1$. Then there is $x \in X$ with $\left\|x\right\| = 1$ and $d(x, Y) \ge 1 - \varepsilon$

*Proof.* Pick $x_{0} \in X \setminus Y$. Since $Y$ is closed, $d = d(x_{0}, Y) > 0$. Choose $y_{0} \in Y$ with $\left\|x_{0} - y_{0}\right\| < d/(1 - \varepsilon)$, and put $x = (x_{0} - y_{0}) / \left\|x_{0} - y_{0}\right\|$. Then $\left\|x\right\| = 1$. For any $y \in Y$ we have $y_{0} + \left\|x_{0} - y_{0}\right\| y \in Y$, hence

$$
\left\|x - y\right\| = \left\|x_{0} - y_{0} - \left\|x_{0} - y_{0}\right\| y\right\| / \left\|x_{0} - y_{0}\right\| \ge d / \left\|x_{0} - y_{0}\right\| \ge 1 - \varepsilon
$$

**Corollary.** The closed unit ball of an infinite-dimensional normed space is not compact

*Proof.* Construct $x_{1}, x_{2}, \dots$ inductively: having chosen $x_{1}, \dots, x_{n-1}$, let $Y_{n-1} = \operatorname{span}\{x_{1}, \dots, x_{n-1}\}$ (a closed subspace) and use the Riesz lemma with $\varepsilon = 1/2$ to choose $x_{n}$ with $\left\|x_{n}\right\| = 1$ and $d(x_{n}, Y_{n-1}) \ge 1/2$. Then $\left\|x_{n} - x_{m}\right\| \ge 1/2$ for $n \ne m$, so the sequence has no Cauchy subsequence and hence no convergent subsequence

Three failures follow at once.

- **Heine–Borel fails.** The closed unit ball is closed and bounded but not compact
- **Bolzano–Weierstrass fails.** In $\ell^{2}$, the orthonormal basis $e_{1}, e_{2}, \dots$ satisfies $\left\|e_{n} - e_{m}\right\| = \sqrt{2}$ for $n \ne m$, so it has no convergent subsequence
- **EVT fails.** In $\ell^{1}$, the continuous linear functional

$$
f(x) = \sum_{n \ge 2} (1 - 1/n) x_{n}
$$

  has norm $1$, but $\left|f(x)\right| < 1$ for every $\left\|x\right\|_{1} \le 1$. Indeed $\left|f(x)\right| \le \sum (1 - 1/n) \left|x_{n}\right| \le \left\|x\right\|_{1} \le 1$, and equality would force $\left|x_{n}\right| = 0$ for every $n$, since $1 - 1/n < 1$. On the other hand $f(e_{n}) = 1 - 1/n \to 1$, so the supremum is $1$ and it is not attained

The last example deserves a comment. In a Hilbert space every continuous linear functional attains its norm on the unit ball (the Riesz representation theorem, together with the Cauchy–Schwarz inequality). In $\ell^{1}$ and in $c_{0}$ this fails. The dividing line is reflexivity: by James's theorem, a Banach space is reflexive if and only if every continuous linear functional attains its norm on the closed unit ball. Thus the failure of EVT is not a defect of one space; it is a structural property that a space may or may not have

A further consequence of the Riesz lemma is worth recording: in an infinite-dimensional normed space, **no** closed ball is compact, and every compact set has empty interior. Compactness in infinite dimension is a rare property of small sets, not a property of the space itself

## 2.4 What survives

Not everything is lost. Three things survive without compactness

- **Completeness.** Closed subspaces of Banach spaces are Banach; $\ell^{1}, \ell^{2}, c_{0}, C(K)$ and $L^{p}$ are complete
- **Connectedness.** Every normed space is convex, hence connected; balls, spheres and convex sets are connected. Consequently IVT holds for continuous scalar functions on any convex set, with no compactness hypothesis at all
- **Uniform continuity on compact sets.** The theorem of Section 1.5 is a theorem about compact metric spaces and remains true in every normed space, but it gives no information about the whole unit ball, which is not compact

The failure is therefore localized precisely at compactness. The correct response is not to abandon the theorems but to isolate the hypothesis they need and to find other ways of verifying it. That hypothesis is the subject of the next section

# 3 Compactness

## 3.1 Definition and first consequences

The definition was given in Section 1.3 and is repeated here for reference

**Definition (compact).** A subset $K$ of a metric space $X$ is **compact** if every open cover of $K$ has a finite subcover. A space is compact if it is compact as a subset of itself

Compactness is a topological property: it is preserved by homeomorphisms. It is also intrinsic to the subset: $K$ is compact as a subset of $X$ if and only if $K$ is compact as a metric space in its own right. This is why the definition can be transported from $\mathbb{R}^{n}$ to arbitrary normed spaces without change

**Theorem (finite intersection property).** $K$ is compact if and only if every family $\{F_{i}\}$ of closed subsets of $K$ with the finite intersection property — every finite subfamily has nonempty intersection — has $\cap_{i} F_{i} \ne \varnothing$

*Proof.* ($\Rightarrow$) If $\cap_{i} F_{i} = \varnothing$, then the sets $K \setminus F_{i}$ form an open cover of $K$. A finite subcover gives $F_{i_{1}} \cap \dots \cap F_{i_{n}} = \varnothing$, contradicting the finite intersection property. ($\leftarrow$) If an open cover $\{U_{j}\}$ has no finite subcover, then $F_{j} = K \setminus U_{j}$ are closed, every finite subfamily has nonempty intersection, but $\cap_{j} F_{j} = \varnothing$

**Theorem (permanence).** Closed subsets of compact spaces are compact; finite unions of compact sets are compact; continuous images of compact sets are compact; arbitrary products of compact spaces are compact (Tychonoff). A compact subset of a Hausdorff space is closed

The proofs are short. A closed subset $F$ of a compact $K$: add $X \setminus F$ to an open cover of $F$ and extract a finite subcover of $K$. A continuous image $f(K)$: pull an open cover of $f(K)$ back to $K$. Tychonoff is deeper and is discussed in Section 5. The last statement: if $x \in X \setminus K$ and $X$ is Hausdorff, each $y \in K$ has a neighbourhood disjoint from a neighbourhood of $x$; compactness of $K$ extracts a finite subcover, producing a neighbourhood of $x$ disjoint from $K$

## 3.2 Metric characterizations

**Definition (total boundedness).** A metric space $X$ is **totally bounded** if for every $\varepsilon > 0$ there are finitely many points $x_{1}, \dots, x_{n}$ with $X = \bigcup_{i=1}^{n} B(x_{i}, \varepsilon)$

**Theorem.** For a metric space $X$ the following are equivalent: (i) $X$ is compact; (ii) $X$ is sequentially compact; (iii) $X$ is complete and totally bounded

*Proof.* (i) $\iff$ (ii) was proved in Section 1.4. (ii) $\Rightarrow$ (iii): a Cauchy sequence with a convergent subsequence converges, so sequential compactness gives completeness; and if $X$ were not totally bounded, an $\varepsilon$-separated infinite set would give a sequence with no Cauchy subsequence. (iii) $\Rightarrow$ (i) was also proved in Section 1.4: a totally bounded space can be bisected into balls of radius $2^{-k}$, and if an open cover had no finite subcover, a nested sequence of such balls together with completeness would produce a point covered by a single member of the cover

## 3.3 Compactness is exactly the EVT hypothesis

The most useful characterization of compactness for the purposes of analysis is the following theorem. It says that compactness is not a technical condition added to the extreme value theorem; it **is** the extreme value theorem

**Theorem (EVT characterizes compactness).** A metric space $X$ is compact if and only if every continuous function $f: X \to \mathbb{R}$ is bounded and attains its maximum and minimum

*Proof.* ($\Rightarrow$) is the extreme value theorem of Section 1.3

($\leftarrow$) Suppose $X$ is not compact. Then $X$ is not sequentially compact, so there is a sequence $(x_{n})$ with no convergent subsequence. Passing to a subsequence, we may assume the points $x_{n}$ are distinct; then the set $S = \{x_{n}\}$ has no accumulation point, so $S$ is closed and discrete. Choose $r_{n} > 0$ with $B(x_{n}, 2 r_{n}) \cap S = \{x_{n}\}$; the balls $B(x_{n}, r_{n})$ are then pairwise disjoint. Define

$$
\varphi_{n}(x) = \max(0, 1 - d(x, x_{n}) / r_{n}), \quad f(x) = \sum_{n=1}^\infty n \varphi_{n}(x)
$$

Each $\varphi_{n}$ is continuous, equals $1$ at $x_{n}$, and vanishes outside $B(x_{n}, r_{n})$. Since the supports are disjoint, every point has a neighbourhood on which at most one term is nonzero, so $f$ is continuous. But $f(x_{n}) = n$, so $f$ is unbounded. Hence not every continuous real function on $X$ is bounded, contradiction

This theorem is the precise sense in which compactness is an **existence license**: maxima, minima, best approximations and fixed points are all consequences of it. It also explains why, in infinite dimension, the loss of compactness is felt as a loss of existence theorems

## 3.4 Examples

- $[a,b]$, closed balls and spheres in $\mathbb{R}^{n}$ are compact
- The **Hilbert cube** $H = [0,1]^\mathbb{N}$, with $d(x,y) = \sum_{n=1}^\infty 2^{-n} \left|x_{n} - y_{n}\right|$, is compact. Given a sequence in $H$, a diagonal argument extracts a subsequence converging in every coordinate; dominated convergence with the weights $2^{-n}$ gives convergence in $d$
- Any uniformly bounded, equicontinuous family in $C(K)$ is relatively compact (Arzelà–Ascoli, Section 4.2)
- The closed unit ball of an infinite-dimensional normed space is not compact, and neither is its unit sphere. The set $\{e_{n}\}$ in $\ell^{2}$ is closed, bounded and discrete, hence not compact; the set $\{0\} \cup \{e_{n}\}$ **is** compact, because the only accumulation point is $0$.
- $(0,1)$ is not compact: the cover by $(1/n, 1)$ has no finite subcover

The last two examples illustrate the point of the definition. Compactness does not mean "small" or "bounded"; it means that the set cannot spread itself out into infinitely many separated pieces. A sequence that converges to a point is compact; a sequence that runs away is not

# 4 Recovering compactness in infinite dimension

The failures of Section 2 are not the end of analysis in infinite dimension; they are the beginning of it. This section describes the three standard repairs — weak topologies, equicontinuity, and completeness together with countability — and the pattern they share. Each repair replaces compactness of the whole unit ball by a weaker compactness principle that is still strong enough to run an existence proof

## 4.1 Weak topologies and Banach–Alaoglu

**Definition (weak and weak\* topologies).** On a normed space $X$, the **weak topology** $\sigma(X, X^{*})$ is the coarsest topology making every $f \in X^{*}$ continuous. On $X^{*}$, the **weak\* topology** $\sigma(X^{*}, X)$ is the coarsest topology making every evaluation $f \mapsto f(x)$, $x \in X$, continuous

**Theorem (Banach–Alaoglu).** The closed unit ball $B_{X^{*}}$ of $X^{*}$ is compact in the $\text{weak}^{*}$ topology. If $X$ is reflexive, $B_{X}$ is compact in the weak topology

The proof of Banach–Alaoglu is Tychonoff's theorem applied to the product $\times_{f \in X^{*}} [-\left\|f\right\|, \left\|f\right\|]$: the ball embeds into this product by $g \mapsto (g(f))_{f}$, and the image is closed. The second statement follows because reflexivity identifies $X$ with $X^{**}$ and the $\text{weak}^{*}$ topology of $X^{**}$ restricts to the weak topology of $X$

**Theorem (norm attainment).** If $X$ is reflexive and $f \in X^{*}$, then $f$ attains its norm on $B_{X}$: there is $x \in X$ with $\left\|x\right\| \le 1$ and $f(x) = \left\|f\right\|$

*Proof.* $B_{X}$ is weakly compact and $f$ is weakly continuous, so $f$ attains its maximum on $B_{X}$ by EVT

The example of Section 2.3 shows that reflexivity cannot be dropped

**Example (failure in c0).** Let $X = c_{0}$ and $f(x) = \sum_{n \ge 1} x_{n} / n^{2}$. Then $\left\|f\right\| = \sum_{n \ge 1} 1 / n^{2} = \pi^{2} / 6$, but $\left|f(x)\right| < \pi^{2} / 6$ for every $x$ with $\left\|x\right\| \le 1$

Indeed $\left|f(x)\right| \le \sum \left|x_{n}\right| / n^{2} \le \sum 1 / n^{2}$, and equality would require $\left|x_{n}\right| = 1$ for every $n$, which is impossible in $c_{0}$. By James's theorem this is not an accident: a Banach space is reflexive if and only if every continuous linear functional attains its norm on the closed unit ball. The failure of EVT is thus a precise diagnostic of non-reflexivity

## 4.2 Arzelà–Ascoli: compactness from equicontinuity

**Definition (equicontinuity).** A family $\mathcal{F} \subset C(K)$ is **equicontinuous** if for every $\varepsilon > 0$ there is $\delta > 0$ such that $d(x,y) < \delta$ implies $\left|f(x) - f(y)\right| < \varepsilon$ for every $f \in \mathcal{F}$, and **uniformly bounded** if $\sup_{f \in \mathcal{F}} \left\|f\right\|_\infty < \infty$

**Theorem (Arzelà–Ascoli).** If $K$ is a compact metric space and $\mathcal{F} \subset C(K)$ is uniformly bounded and equicontinuous, then $\mathcal{F}$ is relatively compact in the sup norm

*Proof sketch.* A compact metric space is separable; let $D$ be a countable dense subset. Diagonal extraction over the countably many points of $D$ gives a subsequence converging pointwise on $D$. Equicontinuity upgrades pointwise convergence on a dense set to uniform convergence: given $\varepsilon$, choose $\delta$ from equicontinuity, cover $K$ by finitely many balls $B(d_{j}, \delta)$ with $d_{j} \in D$, and choose $N$ so that all the finitely many sequences $f_{n}(d_{j})$ are within $\varepsilon / 3$ of each other for $n, m \ge N$. The triangle inequality then gives $\left|f_{n}(x) - f_{m}(x)\right| < \varepsilon$ for all $x$. The limit exists in $C(K)$ because $C(K)$ is complete

The theorem is the standard source of compactness in function spaces. Its most famous application is the Peano existence theorem: for $y' = F(t,y)$ with $F$ continuous and bounded, the Euler polygons are uniformly bounded and equicontinuous, so Arzelà–Ascoli produces a uniformly convergent subsequence, and the limit solves the equation
Continuity alone is enough for existence; compactness supplies the missing limit

## 4.3 Baire category: the countable counterpart

**Theorem (Baire).** In a complete metric space, a countable intersection of dense open sets is dense. Equivalently, a countable union of nowhere dense closed sets has empty interior

The standard corollaries are the Banach–Steinhaus theorem, the open mapping theorem and the closed graph theorem. For the present narrative one consequence is central

**Proposition.** An infinite-dimensional Banach space is not $\sigma$-compact: it is not a countable union of compact sets

*Proof.* If $X = \bigcup_{n \ge 1} K_{n}$ with each $K_{n}$ compact, Baire's theorem gives some $K_{n}$ with nonempty interior. Then $K_{n}$ contains a closed ball, which is therefore compact, contradicting the Riesz lemma

The contrast with compactness is instructive. Compactness is a **finitary** principle: a cover is reduced to finitely many members. Baire is a **countable** principle: a countable intersection of large sets is large. Both convert local information into global existence, and they are the two standard tools for doing so

## 4.4 Minimizing sequences

**Theorem (Hilbert projection).** Let $C$ be a nonempty closed convex subset of a Hilbert space $H$, and $x \in H$. Then there is a unique $y \in C$ with $\left\|x - y\right\| = d(x, C)$

*Proof.* Let $d = d(x, C)$ and choose $y_{n} \in C$ with $\left\|x - y_{n}\right\| \to d$. The parallelogram law gives

$$
\left\|y_{n} - y_{m}\right\|^{2} \le 2 \left\|x - y_{n}\right\|^{2} + 2 \left\|x - y_{m}\right\|^{2} - 4 d^{2} \to 0
$$

so $(y_{n})$ is Cauchy; completeness gives $y_{n} \to y \in C$, and continuity gives $\left\|x - y\right\| = d$. Uniqueness follows from the same inequality: two minimizers would have $\left\|y - y'\right\| = 0$. $\blacksquare$

This proof is the prototype of the **direct method** in the calculus of variations. One proves existence of a minimizer in three steps: a coercivity hypothesis produces a bounded minimizing sequence; a weak compactness principle (reflexivity, Banach–Alaoglu) extracts a weakly convergent subsequence; a lower semicontinuity property passes the inequality to the limit. When even this fails, Ekeland's variational principle still produces approximate minimizers: for every $\varepsilon > 0$ there is $x_\varepsilon$ with $f(x_\varepsilon) \le \inf f + \varepsilon$ and $f(x_\varepsilon) \le f(x) + \varepsilon d(x, x_\varepsilon)$ for all $x$

## 4.5 The pattern

| **Failure** | **Replacement** | **Mechanism** |
| --- | --- | --- |
| Heine–Borel fails | Banach–Alaoglu | compactness of $B_{X^{*}}$ in the $\text{weak}^{*}$ topology |
| Bolzano–Weierstrass fails | reflexivity, Arzelà–Ascoli | weak compactness, equicontinuity |
| EVT fails | minimizing sequences | coercivity, weak compactness, lower semicontinuity |
| no finite subcover | Baire category | completeness and countability |
| no maximizer | Ekeland's principle | approximate minimizers |

Each row replaces compactness by something weaker, but the logical role is unchanged: extracting a convergent object from a bounded family. This is the practical meaning of the claim that compactness is the right hypothesis

# 5 Why compactness is unavoidable

The previous section showed how to live without compactness. This section explains why one cannot do without it altogether: the same principle reappears in logic, category theory, algebra and geometry, and no other hypothesis does the same work

## 5.1 Finite character

The finite intersection property can be read as a statement about finite information: $K$ is compact if and only if a family of closed sets has nonempty intersection as soon as every finite subfamily does. In logical language: if every finite subset of a set of axioms is satisfiable, the whole set is satisfiable

Three instances:

- **Graph colouring** (de Bruijn–Erdős): a graph is $k$-colourable if and only if every finite subgraph is
- **Propositional logic**: a set of propositional formulas is satisfiable if and only if every finite subset is
- **First-order logic**: the same statement for first-order theories, where it is a genuine theorem, not a triviality

The general topological form is Tychonoff's theorem: arbitrary products of compact spaces are compact. The FIP proof is an ultrafilter argument, and the theorem is equivalent to the axiom of choice

## 5.2 Logic: Stone spaces

The set of complete first-order theories in a language $L$ is a closed subset of $\{0,1\}^{L}$, hence compact by Tychonoff. It is the Stone space of the Boolean algebra of sentences. The compactness theorem is exactly the compactness of this space: a finitely satisfiable set of sentences extends to a complete theory. Kelley's theorem makes the connection sharp: Tychonoff's theorem is equivalent to the axiom of choice, and for Hausdorff spaces to the ultrafilter lemma

## 5.3 Category: Stone–Čech and reflections

The category of compact Hausdorff spaces is a reflective subcategory of the category of topological spaces: the inclusion has a left adjoint $\beta$, the Stone–Čech compactification. Every continuous map $X \to K$ with $K$ compact Hausdorff extends uniquely to $\beta X$, and the unit $X \to \beta X$ is dense. This is the compact analogue of the completion of a metric space, which is the reflection of the category of metric spaces with uniformly continuous maps into complete metric spaces.

In locale theory the same phenomenon appears as a finiteness condition: a locale $X$ is compact if and only if the global sections functor $\Gamma: \operatorname{Sh}(X) \to \operatorname{Set}$ preserves filtered colimits. Compactness is the topological version of finite presentability

## 5.4 Algebra: profinite groups and Galois theory

A **profinite group** is an inverse limit of finite groups, each with the discrete topology. Such a limit is compact, Hausdorff and totally disconnected; conversely every compact totally disconnected group is profinite. Examples are $\mathbb{Z}_{p} = \varprojlim \mathbb{Z} / p^{n}$ and the absolute Galois group $G_{K} = \operatorname{Gal}(\overline{K} / K) = \varprojlim \operatorname{Gal}(L / K)$, the limit over finite Galois extensions $L / K$.

The infinite Galois correspondence states that intermediate fields of $\overline{K} / K$ correspond to **closed** subgroups of $G_{K}$. The closure condition is forced by compactness: open subgroups have finite index, and the topology is what makes the correspondence work. Without compactness the statement is false; with it, it is the natural generalization of the finite case

## 5.5 Geometry: properness

In algebraic geometry the analogue of compactness is **properness**. A morphism $f: X \to Y$ of varieties over $\mathbb{C}$ is proper if it is universally closed; equivalently, the induced map $X(\mathbb{C}) \to Y(\mathbb{C})$ on complex points is proper in the usual topological sense — preimages of compact sets are compact. Projective morphisms are proper. The valuative criterion — every map from the generic point of a disc extends — is the algebraic form of the statement that a compact set cannot escape to infinity. Properness gives the maximum principle for varieties (images of closed sets are closed), intersection numbers, Bézout's theorem, and compact moduli spaces

## 5.6 Conclusion: the finiteness principle

Compactness is the topological formalization of finiteness. It is the exact hypothesis under which local information glues into global existence: a continuous function attains its maximum, a bounded sequence has a convergent subsequence, a family of approximate solutions has a limit, a finitely satisfiable theory has a model. Each of these says that a certain search terminates. In finite dimension the search terminates because the geometry is finite-dimensional. In infinite dimension compactness is what remains of that finiteness, and the art of infinite-dimensional analysis is the art of finding the right replacement for it

# 6 Summary and exercises

## 6.1 The journey in one table

| **Setting** | **Connected** | **Compact** | **EVT** | **IVT** |
| --- | --- | --- | --- | --- |
| $\mathbb{R}$ | yes | no | no | yes |
| $[a,b]$ | yes | yes | yes | yes |
| finite-dimensional, closed ball | yes | yes | yes | yes |
| infinite-dimensional, closed ball | yes | no | no | yes |
| compact subset | maybe | yes | yes | if connected |

The table is the whole argument in one glance. The passage from the second row to the fourth is the passage from finite to infinite dimension; the last row is the hypothesis that has to be carried along

## 6.2 Exercises

1. Prove directly from the definition of compactness that the continuous image of a compact set is compact
2. Show that $[0,1]^\mathbb{N}$ with $d(x,y) = \sum_{n \ge 1} 2^{-n} \left|x_{n} - y_{n}\right|$ is compact, by a diagonal argument.
3. Show that the closed unit ball of $C([0,1])$ is not compact. (Consider $f_{n}(x) = x^{n}$)
4. Show that $f(x) = \sum_{n \ge 2} (1 - 1/n) x_{n}$ defines a continuous linear functional on $\ell^{1}$ with $\left\|f\right\| = 1$ that does not attain its norm on the unit ball
5. Show that a compact subset of a metric space is closed and bounded, and that the converse fails in $\ell^{2}$ (consider $\{e_{n}\}$)
6. Show that a normed space is finite-dimensional if and only if its closed unit ball is compact (Riesz lemma)
7. (Tychonoff for two factors.) Show that $X \times Y$ is compact if $X$ and $Y$ are, using the finite intersection property
8. (Baire.) Show that an infinite-dimensional Banach space is not $\sigma$-compact

---

## 6.3 Appendix: Tychonoff for two factors

**Theorem.** If $X$ and $Y$ are compact topological spaces, then $X \times Y$ is compact

We use the tube lemma

**Lemma (tube lemma).** Let $Y$ be compact and let $N$ be an open subset of $X \times Y$ containing $\{x\} \times Y$ for some $x \in X$. Then there is an open neighbourhood $W$ of $x$ with $W \times Y \subseteq N$

*Proof.* For each $y \in Y$ choose open sets $U_{y}$ containing $x$ and $V_{y}$ containing $y$ with $U_{y} \times V_{y} \subseteq N$. Finitely many of the sets $V_{y}$ cover $Y$. Let $W$ be the intersection of the corresponding finitely many sets $U_{y}$. Then $W$ is an open neighbourhood of $x$ and $W \times Y \subseteq \bigcup U_{y} \times V_{y} \subseteq N$

*Proof of the theorem.* Let $\mathcal{U}$ be an open cover of $X \times Y$. For fixed $x$, the slice $\{x\} \times Y$ is compact, so finitely many members of $\mathcal{U}$ cover it; by the tube lemma there is an open neighbourhood $W_{x}$ of $x$ such that $W_{x} \times Y$ is covered by those finitely many members. The sets $W_{x}$ cover $X$, and compactness of $X$ gives $x_{1}, \dots, x_{m}$ with $X = \bigcup_{j=1}^{m} W_{x_{j}}$; the corresponding finite subfamilies together cover $X \times Y$

## 6.4 References

- W. Rudin, *Principles of Mathematical Analysis*, 3rd ed., Chapters 2–4.
- J. Munkres, *Topology*, Chapters 3 and 4.
- H. Brezis, *Functional Analysis, Sobolev Spaces and Partial Differential Equations*, Chapters 1–3.
- J. B. Conway, *A Course in Functional Analysis*, Chapters 1–4.
- R. Engelking, *General Topology*, Chapters 3 and 4.
- J. L. Kelley, *General Topology*, Chapter 5.

The interval $[a,b]$ is not a special case of the real line; it is the first compact space one meets.
