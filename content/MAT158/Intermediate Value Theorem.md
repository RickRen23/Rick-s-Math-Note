intermediate value theorem is easy to prove, as follows:
we denote the set composed by all element $s$ in $[a,b]$ such that $f(s)\le0$ as $S\subset[a,b]$. Clearly $S$ is not empty as $f(a)<0$
by real field's completeness, as $S$ is bounded by $a\le s\le b$, $\exists\,Sup(S)=c$

Now, we show that $f(c)=0$

First, $f(c)<0$ implies that by epsilon-delta language, we could always choose a delta that allows $f(x)$ to be still less than 0, then correspondingly, there is a neighbor of $c$, denoted as $(c-\delta,c+\delta)\cap [a,b]$ such that $f(x)<0$, thus we separate this into two cases:

   1. $c=b$. This is not possible as $f(b)>0$
   2. $c<b$. Thus there exists element in $S$ greater than $c$, contradicts

Thus, $f(x)\ge 0$

Then, similarly, by separating into two cases and then constructing epsilon small enough that any element inside the neighbor of $c$ is still greater than 0, thus we have an upper bound that is less than $c$, thus contradicts

Thus, $f(x)=0$

Therefore, for any continous $f$ on $[a,b]$, $f(a)<0<f(b)\Rightarrow \exists\,a<c<b\,\,S.T.f(c)=0$
