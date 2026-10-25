We say a closure of A is the union of set A and the set A' that containes all limit point of A, denoted as $\overline{A} = A\cup A'$

Now, we prove the self-explanatory characteristic of $\overline{A}$, namely, the closure of A is the smallest closed set containing A

Prove: 
by negation of the definition of limit points of A,
$$\forall\,b\in (A\cup A')^c,\,\,\exists\,r>0\,\,S.T.\,N_{r}(b)\cap A=\emptyset$$
Now we want to prove that this set does not intersect A prime either, since that will imply that it does not intersect with A nor A', which implies that it does not intersect with the closure of A. Thus, the complement of the closure of A is opened, and therefore the closure of A is closed

We prove this by contradiction, using the definition of limit point:
$$\exists\,p\in N_{r}(b)\cap A'\Rightarrow\forall r'>0,\,\exists\,b'\in A\,\,S.T.\,b'\in N_{r'}(p)$$
$$thus,\,\,take\,\,r'<r-d(p,b)\Rightarrow d(b,b')< d(b,p)+r'<r\Rightarrow b'\in N_{r}(b)\Rightarrow b'\in N_{r}(b)\cap A,\,contradicts$$
Therefore, the closure of A is closed. Proving the closure of A is the smallest set that contains A and being closed is rather easy if we assume there is a smaller set B, namely, there is a point Q that locates in closure of A but doesn't locates inside B, then either the point Q belongs to A or A'

$$Q\in A\Rightarrow A\not\subset B$$
$$Q\in A'\Rightarrow \exists\,\,limit\,point\,\,Q\notin B\,\,\Rightarrow\ B\,\,is\,not\,closed$$
Therefore, the closure of A is the smallest closed set containing A