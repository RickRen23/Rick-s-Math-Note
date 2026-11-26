> [!theorem] Question A6
> $f:[0,\infty)\to\mathbb R$ is strictly decreasing and continuous, and
> $$
> \lim_{x\to\infty}f(x)=0.
> $$
> Try prove:
> $$
> \int_0^\infty\frac{f(x)-f(x+1)}{f(x)}\,dx=+\infty.
> $$

## Prove

$f$ 严格递减且趋于 $0$ $\Rightarrow$ $x\ge0$ 时 $f(x)>0$。

构建函数 $g$
$$
g(x)=\frac{f(x)-f(x+1)}{f(x)}.
$$
可见 $g$ 连续且非负

下面我们假设   $\int_0^\infty g(x)\,dx<\infty$
$$
\lim_{t\to\infty}\int_t^\infty g(x)\,dx=0.
$$

对 $x\ge t$，由 $f(x)\le f(t)$ 及 $g(x)\ge0$，有
$$
f(t)g(x)\ge f(x)g(x)=f(x)-f(x+1).
$$
故
$$
f(t)\int_t^\infty g(x)\,dx
\ge
\int_t^\infty\bigl(f(x)-f(x+1)\bigr)\,dx.
$$

对于 $R\ge t+1$，
$$
\begin{aligned}
\int_t^R\bigl(f(x)-f(x+1)\bigr)\,dx
&=\int_t^R f(x)\,dx-\int_{t+1}^{R+1}f(x)\,dx\\
&=\int_t^{t+1}f(x)\,dx-\int_R^{R+1}f(x)\,dx.
\end{aligned}
$$
又有
$$
0\le\int_R^{R+1}f(x)\,dx\le f(R)\longrightarrow0,
$$
令 $R\to\infty$，有
$$
\int_t^\infty\bigl(f(x)-f(x+1)\bigr)\,dx
=\int_t^{t+1}f(x)\,dx.
$$
$$
f(t)\int_t^\infty g(x)\,dx
\ge\int_t^{t+1}f(x)\,dx
\ge f(t+1).
$$
$$
0<\frac{f(t+1)}{f(t)}
\le\int_t^\infty g(x)\,dx
\longrightarrow0.
$$
故
$$
g(t)=1-\frac{f(t+1)}{f(t)}\longrightarrow1.
$$

因此有 $T\ge0$，对所有 $t\ge T$， $g(t)\ge\frac12$
$$
\int_T^R g(x)\,dx\ge\frac{R-T}{2}\longrightarrow+\infty,
$$
故矛盾
故，我们有
$$
\int_0^\infty\frac{f(x)-f(x+1)}{f(x)}\,dx=+\infty
$$
