# A5：Fibonacci 子集和的表示数

> [!answer] 答案
> 满足 $a_n=2020$ 的最大整数为
> $$
> \boxed{n=F_{4040}-1}.
> $$

## 证明

约定 $a_0=1$，对应空集。注意，虽然 $F_1=F_2$，下标 $1,2$ 仍对应不同的集合。

### 一、建立递推式

设 $F_k\le n<F_{k+1}$，其中 $k\ge2$。表示 $n$ 的集合只能使用下标 $1,\ldots,k$。

若集合包含 $k$，删除 $k$ 后得到 $n-F_k$ 的表示，因此有 $a_{n-F_k}$ 个。

若集合不包含 $k$，在 $\{1,\ldots,k-1\}$ 中取补集。由于

$$
\sum_{i=1}^{k-1}F_i=F_{k+1}-1,
$$

补集的和为 $F_{k+1}-1-n$。

两个余数都小于 $F_{k-1}$，其所有表示均只使用小于 $k$ 的下标。因此上述对应均为双射，得到

$$
\boxed{a_n=a_{n-F_k}+a_{F_{k+1}-1-n}}.
\tag{1}
$$

两个余数均小于 $n$，由 $a_0=1$ 和式 $(1)$ 归纳可知

$$
a_n\ge2\qquad(n\ge1).
\tag{2}
$$

### 二、计算特殊点的表示数

在式 $(1)$ 中，将区间下标取为 $k-1$，并令 $n=F_k-1$，得到

$$
a_{F_k-1}=a_{F_{k-2}-1}+1
\qquad(k\ge3).
$$

初值为 $a_{F_1-1}=a_{F_2-1}=1$，故

$$
\boxed{
a_{F_k-1}=\left\lfloor\frac{k+1}{2}\right\rfloor
}.
\tag{3}
$$

特别地，

$$
a_{F_{4040}-1}=2020.
$$

### 三、证明最大性

我们证明

$$
F_k\le n<F_{k+1}
\quad\Longrightarrow\quad
a_n\ge\left\lfloor\frac{k}{2}\right\rfloor+1.
\tag{4}
$$

对 $k$ 作强归纳。由 $a_1=a_2=2$、$a_3=a_4=3$，结论对 $k=2,3,4$ 成立。

设 $k\ge5$，且结论对更小的下标成立。记

$$
r=n-F_k,\qquad s=F_{k+1}-1-n.
$$

于是

$$
a_n=a_r+a_s,\qquad
r+s=F_{k-1}-1,\qquad
0\le r,s<F_{k-1}.
$$

**若其中一个余数为零**，另一个就是 $F_{k-1}-1$。由式 $(3)$，

$$
a_n=1+a_{F_{k-1}-1}
=1+\left\lfloor\frac{k}{2}\right\rfloor.
$$

**若两个余数都为正**，因为

$$
r+s=F_{k-1}-1
=2F_{k-3}+F_{k-4}-1
\ge2F_{k-3},
$$

至少有一个余数（不妨设为 $r$）满足

$$
F_{k-3}\le r<F_{k-1}.
$$

由归纳假设及式 $(2)$，

$$
\begin{aligned}
a_n
&=a_r+a_s\\
&\ge\left\lfloor\frac{k-3}{2}\right\rfloor+1+2\\
&\ge\left\lfloor\frac{k}{2}\right\rfloor+1.
\end{aligned}
$$

式 $(4)$ 得证。

现在，若 $n>F_{4040}-1$，则 $n\ge F_{4040}$。选择 $k$ 使得 $F_k\le n<F_{k+1}$，便有 $k\ge4040$，因此

$$
a_n\ge\left\lfloor\frac{k}{2}\right\rfloor+1
\ge2021.
$$

结合 $a_{F_{4040}-1}=2020$，所求最大整数为

$$
\boxed{F_{4040}-1}.
$$