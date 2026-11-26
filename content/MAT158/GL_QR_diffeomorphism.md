---
tags:
  - 微分几何
  - 线性代数
  - QR分解
aliases:
  - 一般线性群的微分同胚分解
---

# 一般线性群的微分同胚分解

> [!abstract] 核心思路
> **QR 分解 + 正对角元取对数。**
> 正交（酉）矩阵提供第一个因子，上三角矩阵的自由参数提供欧氏空间因子。

## 题目

(a) 构造微分同胚 $GL_3(\mathbb R)\cong O(3)\times\mathbb R^6$。

(b) 提出并证明 $GL_n(\mathbb C)$ 的类似结论。

以下微分同胚均指**实光滑流形**之间的微分同胚。

## 共同工具：正对角 QR 分解

对 $\mathbb F=\mathbb R$ 或 $\mathbb C$，每个 $A\in GL_n(\mathbb F)$ 唯一分解为
$$
A=QR,
$$
其中 $Q^*Q=I$，$R$ 为上三角矩阵且 $r_{jj}>0$；并且 $Q,R$ 光滑依赖于 $A$。这里 $*$ 在实数情形表示转置，在复数情形表示共轭转置。

**证明。** 对 $A$ 的列 $a_1,\ldots,a_n$ 进行 Gram–Schmidt：
$$
v_j=a_j-\sum_{i<j}q_i(q_i^*a_j),\qquad
q_j=\frac{v_j}{\|v_j\|},
$$
并令
$$
r_{ij}=q_i^*a_j\quad(i<j),\qquad r_{jj}=\|v_j\|>0.
$$
列向量线性无关，故每个 $v_j\ne0$；上述公式唯一确定 $Q,R$，且只涉及光滑运算。反过来，对任意这样的 $Q,R$，将同一算法用于 $QR$，恰好恢复 $Q,R$。因此
$$
A\longmapsto(Q,R),\qquad (Q,R)\longmapsto QR
$$
互为光滑逆映射。$\square$

## (a) 实数情形

写出唯一的正对角 QR 分解
$$
A=Q
\begin{pmatrix}
r_{11}&r_{12}&r_{13}\\
0&r_{22}&r_{23}\\
0&0&r_{33}
\end{pmatrix}.
$$
所求映射为
$$
\boxed{
\Phi(A)=
\bigl(Q,(\log r_{11},\log r_{22},\log r_{33},r_{12},r_{13},r_{23})\bigr).
}
$$
其逆映射显式为
$$
\boxed{
\Phi^{-1}\bigl(Q,(x_1,\ldots,x_6)\bigr)
=
Q
\begin{pmatrix}
e^{x_1}&x_4&x_5\\
0&e^{x_2}&x_6\\
0&0&e^{x_3}
\end{pmatrix}.
}
$$
由上述引理及 $\log,\exp$ 的光滑性，两者均光滑。故
$$
\boxed{GL_3(\mathbb R)\cong O(3)\times\mathbb R^6.}
$$

## (b) 复数情形

类似结论为
$$
\boxed{GL_n(\mathbb C)\cong U(n)\times\mathbb R^{n^2}.}
$$

**证明。** 同样写 $A=QR$，其中 $Q\in U(n)$，$R$ 为正对角上三角矩阵。将 $R$ 编码为实坐标
$$
c(R)=
\bigl((\log r_{jj})_{j=1}^n,\,
(\operatorname{Re}r_{ij},\operatorname{Im}r_{ij})_{i<j}\bigr),
$$
其中 $i<j$ 按任意固定顺序排列。坐标总数为
$$
n+2\binom n2=n^2.
$$
于是所求微分同胚及其逆为
$$
\Phi_{\mathbb C}(A)=(Q,c(R)),\qquad
\Phi_{\mathbb C}^{-1}(Q,x)=Q\,c^{-1}(x).
$$
这里 $c^{-1}$ 只需对前 $n$ 个坐标取指数，并把其余坐标两两合成复数。由共同引理，两映射均光滑。$\square$
