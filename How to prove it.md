These are notes on the book **How to prove it** by Velleman.
# 1  Sentential Logic

We can use logical reasoning to deduce the truth of a statement. Sometimes it is easier to break down a statement from words to placeholders, e.g, P, Q for instance and use these to reason the truth. That is from the *premise* we can arrive at a *conclusion*. The idea is to construct the premise in a way so that if the premises are true then the conclusion is also true (forced). 

What make an argument/statement **valid**? If the conclusion is forced on us by the premise then the argument is valid. An argument is valid if the premises cannot all be true without the conclusion being true as well. The conclusion can be true in the case where all the premises are not true. Validity only requires that the conclusion is true whenever all the premises are true. Otherwise, the argument is invalid.

The statement: 
	It will either rain or snow tomorrow.
	It's too warm for snow.
	Therefore, it will rain

Can be broke down into
	P or Q.
	Not Q.
	Therefore, P.

If we have the premise P,Q,... We can create a truth table to check all the scenarios.

We can interpret a set using something the book calls an *elementhood test*. For instance, if we define a set $\{ x |x  \text{ is a prime} \}$ is the set of all elements that satisfy the test. We can specify a statement of a free variable as $F(x)$ where $F$ is some statement of $x$. For instance, we write $P(x)$ as the statement: "$x$ is a prime". We can also construct statements that has as input more than one free variable. The reason for defining statements in this way is to make it possible to let $x$ range in some universe $U$ of values. Note that the truth of the statement $F(x)$ depends on the  $x$.

**Theorem 1.4.7**
For any sets $A$ and $B$, $(A\cup B) \setminus B \subseteq A$. 
>Proof: We need to show that if something is and element of $A\cup B) \setminus B$, then it must also be and element of $A$,  suppose that $x \in (A \cup B) \setminus$. This means that $x \in A \vee x \in B$ and $x \not\in B$. Note that these statements (premises) are $P \vee Q$ and $\neg Q$ and therefore, $P$.

Why is there not an equality in the theorem above? Because, if the $A$ and $B$ have elements in common, then removing all elements of $B$ will result in a set that is not $A$. E.g $A = \{1,2\}$ and $B= \{2,3\}$.

The connective $\rightarrow$ represents, in plain words, the if then *conditional*. Say we have two statements $P$ and $Q$. Then we we say if $P$ then $Q$ ($P \rightarrow Q$ ). The truth table for this connective is identical to $\neg P \vee Q$ and therefore equivalent representations.

The *contrapositive* of $P \rightarrow Q$ is $\neg Q \rightarrow \neg P$ and they are both equivalent statements.

The *biconditional* statement $P \leftrightarrow Q$ is the same as $(P \rightarrow Q)\wedge(Q \rightarrow P)$. That is both ways imply the other.

The reason the conditional statement is easy to missinterpret. Since in speech it is usual that one phrases a statement as a conditional but in truth a biconditonal. In mathematics, we have to be very careful when doing this.

# 2 Quantificational Logic

It is typically off interest to analyse how many values there are in a truth set. More specifically, we want to know if the truth set is the entire universe or if there is at least one value in the set. To do this, we can use quantifiers. The two, quantifiers we are studying are $\exists$ the **existential** quantifier and $\forall$ the **universal** quantifier. They should be use as "there exits" and "for all". These symbols quantify, the truth set.

We can combine quantifiers, to generate more general statements. But the order in which these are used **matter**. So be cautious about using them. However, if the it is the same quantifier, then it dosen't matter. That is, they can be interchanged.

There are two laws for quantifiers that using negation, **Quanifier Negation Laws**:
- $\neg \exists xP(x) = \forall x \neg P(x)$
- $\neg \forall x P(x) = \exists x \neg P(x)$
That is the negation can be swapped with the quantifier by changing the quantifier and negating the statement. 

If one wants to quantify that there exists **exactly** one x such that a statement is true then we write $\exists! x P(x)$. We save this special notation since it occurs often in mathematics. It is also typical to say that there is a **unique** x.

This quantifier is equivalent to the simpler: $\exists! x P(x) = \exists x (P(x) \wedge \neg \exists y(P(y) \wedge (y\neq x))$.

In the chapter about sets, we typically wrote the truth set as $\{x \in U | P(x)\}$. However, with quantifiers we can instead write the truth set differently as $\forall x\in U \quad P(x)$. Similarly, we can write there is at least one $x$ such that $P(x)$ is true as $\exists x \quad P(x)$. We say that these quantifiers are *bounded*. Since we are restricting the values of $x$. E.g. $\exists x > 0 \quad P(x)$. These bounded quantifiers can be expanded to something more familiar. For instance, $\forall x \in A \quad P(X) = \forall x(x \in A \rightarrow P(x))$. Interestingly, the negation laws do not change the universe. For instance, $\neg \forall x \in A\;P(x) = \exists x \in A\;\neg P(x)$.

A special case is when the quantifier is bound to $A=\emptyset$. The statements:
- $\exists x \in A\;P(x)$ is always false.
- $\forall x \in A\;P(x)$ is always true. These types of statements are called *vacuously* true.

The universal quantifier $\forall$ distributes over conjunction. That is, $\forall x (E(x)  \wedge T(x) = \forall x E(x) \wedge \forall x T(x)$ and the existential quantifier distributes over disjunction. That is, $\exists x (P(x) \vee Q(x)) =\exists x P(x) \vee \exists x Q(x)$.

At this point we have learnt the following 7 symbols, The connectives $\wedge, \vee, \neg, \rightarrow, \leftrightarrow$ and the quantifiers: $\forall, \exists$. The author states the structure of all mathematical statements can be understood using these symbols, and all mathematical reasoning can be analysed in terms of the proper use of these symbols.

Definition of *intersection* and *union* for families of sets:
- The intersection of a family $\cap \mathcal{F} = \{ x | \forall A \in \mathcal{F} (x \in A)\}=\{ x | \forall(A \in \mathcal{F} \rightarrow x \in A) \}$.
- The union of a family $\cup \mathcal{F} =\{ x | \exists A \in \mathcal{F}(x \in A) \}= \{ x | \exists A(A \in \mathcal{F} \wedge x \in A)\}$.


# 3 Proofs

A proof of a theorem is a deductive argument whose premises are the hypothesis of the theorem and whose conclusion is the conclusion of the theorem.

**Never assert anything until you can justify it completely**. However, making and assumption is ok. One should have in mind that when we assume a statement $P$ and conclude $Q$, we are not really proving $Q$. We are saying that if $P$ is true then $Q$ is true. That is, if the theorem being proven was $Q$, then the proof is incomplete. But if the conclusion was $P \rightarrow Q$, then the proof is complete.

**First proof strategy:**
	**To prove a conclusion of the form $P \rightarrow Q$:**
	Assume $P$ is true and then prove $Q$.
In this, strategy the conclusion we are trying to prove is $P \rightarrow Q$ and **NOT** $Q$. But this strategy allows us to transform the problem into an equivalent formulation. What this strategy says is that, if we have a conclusion of the form above, then we can add $P$ to our hypothesis and change the conclusion to $Q$. And if we prove this transformed problem we have then concluded $P \rightarrow Q$.
 
We define *givens* as statements that are know or assumed to be try at some point the course of figuring out a proof. And the statement that remains to be proven at that point as the *goal*. At the start of figuring out a proof, the givens will just be the hypothesis, but the may later include other statements that have been inferred or added as a new assumption as a result of transformation. The goal will initially be the conclusion but may be changed several times in the course of figuring out a proof. 

**Example:**
	Say we want to prove the following conclusion $P \rightarrow Q$. At this stage we have no givens, and the goal is $P \rightarrow Q$. However, if we use the proof strategy above, we can transform the problem. Then, our givens will me $P$ and the goal will be $Q$.

**Second proof strategy (Contraposition):** 
	**To prove a goal of the form $P \rightarrow Q$:**
	Assume $Q$ is false and prove that $P$ is false.

**Negated statements proof strategy**:
	**To prove a goal of the form $\neg P$:
	If possible, reexpress the goal in some other form and then use one of the proof strategies for this other goal form.

**Proof by contradiction:**
	**To prove a goal of the form $\neg P$:**
	 Assume $P$ is true and try to reach a contradiction. Once you have reached a contradiction, you can conclude that $P$ must be false. Often, one tries to contradict one of the given.

**Proof strategy based on given:**
	**To use a given of the form $\neg P$:**
	If you're doing a proof by contradiction, try making $P$ your goal. If you can prove $P$, then the proof will be complete, because $P$ contradicts the given $\neg P$. That is, to prove a contradiction, negate one off the given. If we can prove the negated given then the proof will be complete, because the goal contradicts the given.

**Rexpress given proof strategy:**
	**To use a given of the form $\neg P$:**
	If possible, reexpress this given in some other form.

**Proof strategy for conditional (rules of inference):**
	**To use a given of the form $P \rightarrow Q$:**
	If you are also given $P$, or if you can prove $P$ is true, then you can use this given to conclude that $Q$ is true (modus ponens). Since it is equivalent to $\neg Q \rightarrow \neg P$, if you can prove that $Q$ is false, you can use this given to conclude that $P$ is false (modus tollens).

**Proof strategy for universal quantifier:**
	**To prove a goal of the form $\forall x P(x)$:**
	Let $x$ stand for an arbitrary object and prove $P(x)$. The letter $x$ must be a new variable in the proof. If $x$ is already being used in the proof to stand for something, then you must choose an unused variable, say $y$. to stand for the arbitrary object, and prove $P(y)$.

**Proof strategy for existential quantifier:**
	**To prove a goal of the form $\exists x P(x)$:**
	Try to find a value of $x$ for which you think $P(x)$ will be true. Then start your proof with "Let $x=$ (the value you decided on)" and proceed to prove $P(x)$ for this value of $x$. Once again, $x$ should be a new variable. 

**Proof strategy for using existential quantifier in given:**
	**To use a give of the form $\exists x P(x)$:**
	Introduce a new variable $x_{0}$ into the proof to stand for and object which $P(x_{0})$ is true. This means that you can now assume that $P(x_{0})$ is true. This is called *existential instantiation*.

**Proof strategy for using universal quantifier in given:**
	**To use a given of the form $\forall x P(x)$:**
	You can plug in any value, say $a$, for $x$ and use this given to conclude that $P(a)$ is true. This rule is called *universal instantiation*.

**Proof strategy for solving goal with conjunction**:
	**To prove a goal of the form $P \wedge Q:$
	Prove $P$ and $Q$ separately.

**Proof strategy for solving given with conjunction:**
	**To use a given of the form $P \wedge Q$:**
	Treat this given as two separate givens: $P$ , and $Q$.

**Proof strategy for biconditional:**
	**To prove a goal of the form $P\leftrightarrow Q$:**
	Prove $P \rightarrow Q$ and $Q \rightarrow P$ separately.

**Proof strategy to use given of the form $P \leftrightarrow Q$:**
	Treat this as two separate givens: $P \rightarrow Q$, and $Q \rightarrow P$.

**Proof strategy to use given of the form $P \vee Q$:**
	Break your proof into cases. For case 1, assume that $P$ is true and use this assumption to prove the goal. For case 2, assume $Q$ is true and give another proof of the goal.

**Proof strategy for goal of the form $P \vee Q$:**
	Break your proof into cases. In each case, either prove $P$ or prove $Q$.

Any proof can be broken into cases at any time, as long as the cases *exhaust* all of the possibilities.

Whenever faced with a goal of the form $P \vee Q$ and we can't figure out how to split it into cases a simple rule of thumb is the following: 
	Assume that $P$ is true for case $1$ and assume that it is false in case $2$. $P$ is either true of false, so in the first case if we assume that $P$ is true then the goal $P \vee Q$ is true. In the second case we assume that $P$ is false, so the only way that the goal $P \vee Q$ is true is if $Q$ is true. Thus to complete the second case we should try to prove $Q$.

Summed up in a proof strategy:
**Proof strategy to deal with goal of the from $P \vee Q$:**
	If $P$ is true, then clearly the goal $P \vee Q$ is true, so you only need to worry about the case in which $P$ is false. You can complete the proof in this case by proving that $Q$ is true.

**To use a given of the form $P \vee Q$:**
	If yo are given $\neg P$, or you can prove that $P$ is false, then you can use the given to conclude that $Q$ is true. Similarly, if you  are given $\neg Q$ or can prove that $Q$ is false, then you can conclude that $P$ is true.

**To prove a goal of the form $\exists ! xP(x)$:**
	Prove $\exists xP(x)$ and $\forall y\forall z( (P(y) \wedge P(z)) \rightarrow y=z)$. The first of these goals shows that there exists an $x$ such that $P(x)$ is true, and the second shows that it is unique. The two parts of the proof are therefore sometimes labeled *existence* and *uniqueness*. There are however many ways of proving something equivalent. They author provides three equivalent representations.

**To prove a goal of the form $\exists!xP(x)$**:
	Prove $\exists x(P(x) \wedge \forall y(P(y) \rightarrow y=x))$, using strategies from previous sections.

**To use a given of the form $\exists!xP(x)$:**
	Treat this as two given statements, $\exists xP(x)$ and $\forall y\forall z((P(y) \wedge P(z)) \rightarrow y=z)$. To use the first statement you should probably choose a name, say $x_{0}$, to stand for some object such that $P(x_{0})$ is true. The second tells you that if you ever come across two objects $y$ and $z$ such that $P(y)$ and $P(z)$ are both true, you can conclude that $y=z$.

# Chapter 4

**Definition (Truth set for Cartesian products)**:
	Suppose $P(x,y)$ is a statement with two free variables in which $x$ ranges over a set $A$
	and $y$ ranges over another set $B$. Then $A \times B$ is the set of all assignments of values to $x$ and $y$ that makes sense in the statement $P(x,y)$. The truth set of $P(x,y)$ is the subset of $A \times B$ consisting of those assignments that make the statement come out true. In other words, the truth set of $P(x,y)$ is the set $\{(a,b) \in A \times B | P(a,b)\}$.

**Definition (Relation):** 
	A relation is a subset $R \subseteq A \times B$ . We can think of it as a subset satisfying some statement $P(\cdot )$. This gives us a subset that gives us a relationship of some sort. 

**Definition**: 
	Suppose $R$ is a relation from $A$ to $B$. Then
	The *domain* of R is the set $Dom(R) = \{ a \in A | \exists b \in B ((a,b) \in R)\}$.
	The *range* of $R$ is the set 
	$Ran(R) = \{ b \in B | \exists a \in A((a,b) \in R)\}$.
	 The *inverse* of $R$ is the relation $R^{-1}$ from $B$ to $A$ defined as follows:
	 $R^{-1} = \{ (b,a) \in B \times A | (a,b) \in R \}$
	 Finally, suppose $R$ is a relation from $A$ to $B$ and $S$ is a relation from $B$ to C. The the *composition* of $S$ and $R$ is the relation $S \circ R$ from $A$ to $C$ defined as follows:
	 $S \circ R = \{ (a,c) \in A \times C | \exists b \in B ((a,b) \in R \wedge (b,c) \in S) \}$
 
**Theorem (Properties of Relation)**:
	Suppose $R$ is a relation from $A$ to $B$, $S$ is a relation from $B$ to $S$, and T is a relation from $C$ to $D$. Then:
	1. $(R^{-1})^{-1} = R$.
	2. $\mathrm{Dom} (R^{-1}) = \mathrm{Ran}(R)$.
	3. $\mathrm{Ran}(R^{-1}))=\mathrm{Dom}(R)$.
	4. $T \circ (S \circ R) = (T \circ S) \circ R$ .
	5. $(S \circ R)^{-1}= R^{-1} \circ S^{-1}$

 We can view relations as maps. That is if we let $R$ be a "map" we can say that $aRb$ is equivalent to $(a,b) \in R$ and finally, $R: a \to b$. Drawing the following picture can help us understand a relation $R$ better.

![[Screenshot 2024-02-10 at 12.41.52.png]]

Here, the points are called *vertices* and the line connecting the points are called *edges*.

We call a relation that is on itself, i.e $R \subset A \times A$ a *relation on $A$* or a *binary relation on $A$*. On can illustrate such a relation using the following image.

![[Screenshot 2024-02-10 at 13.05.15.png]]
These type of figures are called *directed graphs*.

If every vertex has a loop we call the relation *reflexive*.

**Definition**
	Suppose $R$ is a relation on $A$.
	1. $R$ is said to be *reflexive* on $A$ (or just *reflexive*, if $A$ is clear from context) if $\forall x \in A(xRx)$, or in other words $\forall x \in A ((x,x) \in R)$.
	2. $R$ is *symmetric* if $\forall x \in A \forall y \in A(xRy \to yRx)$
	3. $R$ is *transitive* if $\forall x \in A \forall y \in A \forall z \in A(xRy \wedge yRz) \to xRz$.

**Theorem**
	Suppose $R$ is a relation on a set $A$.
	1. $R$ is reflexive iff $i_{A} \subseteq  R$, where as before $i_{A}$ is the identity relation on $A$.
	2. $R$ is symmetric iff $R=R^{-1}$ .
	3. $R$ is transitive iff $R \circ R \subseteq R$.

**Definition**
	Suppose $R$ is a relation on a set $A$. Then $R$ is said to be *antisymmetric* if $\forall x \in A \forall y \in A (xRy \wedge yRx) \to x=y)$.

**Definition**
	Suppose $R$ is a relation on a set $A$. Then $R$ is called a *partial order on $A$* (or just a *partial order* if $A$ is clear from context) if it is reflexive,  transitive and antisymmetric. It is called a *total roder on A* (or just *total order*) if it is a partial order, and in addition it has the following property: $\forall x \in A \forall y \in A (xRy \vee yRx)$.

Partial ordering does not allow us to compare every element. Whilst total ordering does. From the definition we can see that either one of the relations must hold.

**Definition**
	Suppose $R$ is a partial order on a set $A$, $B \subseteq A$, and $b \in B$. Then $b$ is called an *$R$-smallest* element of $B$ if $\forall x \in B bRx$. It is called an *$R$-minimal* element if $\neg \exists x \in B (xRb \wedge x \neq b$.

We can interpret minimal inte following way:
	An element $b \in B$ is $R$-minimal if both $xRb \wedge x \neq b$ can be true. For instance if all elements $\geq c$ , then if $xRc$ then $x =c$. In some sense all elements that can be viewed as the "smallest" thing that can be related to.

 **Theorem**: 
	 Suppose $R$ is a partial order on a set $A$, and $B \subseteq A$.
	 1. If $B$ has a smallest element, then this smallest element is unique. Thus we can speak of **the** smallest element of $B$ rather than **a** smallest element. 
	 2. Suppose $b$ is the smallest element in $B$. Then $b$ is also minimal element of $B$, and it is the only minimal element.
	 3. If $R$ is a total order and $b$ is a minimal element of $B$, then $b$ is the smallest element of $B$.
  
We can define the maximal and largest element of a partially ordered set in a similar manner as for minimal and smallest but interchanging $x$ and $b$. 

**Definition**
	Suppose $R$ is a partial order on $A$, $B \subseteq A$, and $a \in A$. Then $a$ is called a *lower bound* for $B$ if $\forall x \in B(aRx)$. Similarly, it is an *upper bound* for $B$ if $\forall x \in B(xRa)$.

Difference between smallest/largest and upper/lower bound is that in the latter case the element does not need to be a part of the set.

**Definition**
	 Suppose $R$ is a partial order on $A$ and $B \subseteq A$. Let $U$ be the set of all upper bounds for $B$, and let $L$ be the set of all lower bounds. If $U$ has a smallest element, then this smallest element is called the *least upper bound* of $B$. If $L$ har the largest element, then this largest element is called the *greatest lower bound* of $B$. These can be shortened to *l.u.b* and *g.l.b*.
 
**Theorem**
	Suppose $A$ is a set, $\mathcal{F} \subseteq \mathcal{P}(A)$, and $\mathcal{F} \neq \varnothing$. Then the least upper bound of $\mathcal{F}$(in the subset partial order) is $\cup \mathcal{F}$ and the greatest lower bound of $\mathcal{F}$ is $\cap \mathcal{F}$.

**Definition**
	Suppose $R$ is a relation on a set $A$. Then $R$ is called an *equivalence relation on* $A$ (or just and *equivalence relation* if $A$ is clear from context) if it is reflexive, symmetric, transitive.

**Definition**
	Suppose $A$ is a set and $\mathcal{F} \subseteq \mathcal{P}(A)$. We will say that $\mathcal{F}$ is *pairwise disjoint* if every pair of distinct elements of $\mathcal{F}$ are disjoint, or in other words $\forall X \in \mathcal{F} \forall Y \in \mathcal{F}(X \neq Y \rightarrow X \cap Y = \emptyset)$. $\mathcal{F}$ is called a *partition* of $A$ if it has the following properties:
	1) $\cup \mathcal{F} = A$
	2) $\mathcal{F}$ is pairwise disjoint.
	3) $\forall X \in \mathcal{F}(X \neq \emptyset)$.

**Definition**
	Suppose $R$ is an equivalence relation on a set A, and $x \in A$. Then the *equivalence class of $x$ with respect to $R$* is the set 
	$$
[x]_{R} = \{ y \in A | yRx \}.
$$ The set of all equivalence classes of elements of $A$ is called *$A$ modulo $R$*, and is denoted $A/R$. Thus 
	$$
A / R = \{ [x]_{R} |x \in  A\} = \{ X \subseteq A | \exists x \in  A(X = [x]_{R}) \}
$$

**Theorem**
	Suppose $R$ is an equivalence relation on a set $A$. Then $A / R$ is a partition of $A$.

**Theorem**
	Suppose $A$ is a set and $\mathcal{F}$ is a partition of $A$. Then there is an equivalence relation $R$ on $A$ such that $A /R = \mathcal{F}$.

# Chapter 5

**Definition** 
	Suppose $F$ is a relation from $A$ to $B$. Then $F$ is called a *function from* $A$ to $B$ if for every $a \in A$ there is exactly one $b \in B$ such that $(a,b) \in F$. In other words, to say that $F$ is a function from $A$ to $B$ means:
	$$
	\forall a \in  A \exists !b\in B((a,b) \in  F).
	$$
	We write $F: A \rightarrow B$

Instead of writing $(a,b) \in f$ we can also write $f(a) = b$.

**Theorem**
	Suppose $f$ and $g$ are function from $A$ to $B$. If $\forall a \in A(f(a)=g(a)))$, then $f=g$.

**Theorem** 
	Suppose $f: A \to B$ and $g: B \to C$. Then $g \circ f: A \to C$, and for any $a \in A$, the value of $g \circ f$ at $a$ is given by the formula $(g \circ f)(a) = g(f(a))$.

**Definition**
	Suppose $f: A \to B$. We will say that $f$ is *one-to-one* (Injection) if $$
\neg \exists a_{1} \in  A \exists a_{2}\in A(f(a_{1}) = f(a_{2}) \wedge a_{1} \neq a_{2})
$$
	We say that $f$ *maps onto*(surjection) $B$ if $$
\forall b \in  B \exists a \in  A(f(a)=b).
$$
**Theorem**
	1. $f$ is one-to-one iff $\forall a_{1} \in A \forall a_{2} \in A(f(a_{1}) = f(a_{2}) \to a_{1}= a_{2})$.
	2. $f$ is onto iff $Ran(f) = B$


**Theorem**
	Suppose $f: A \to B$ and $g: B \to C$. It follows that
	1. if $f$ and $g$ are both one-to-one, then so is $g \circ f$.
	2. if $f$ and $g$ are both onto, the so is $g \circ f$.

Functions that are both one-to-one and onto are called *bijections*.

**Theorem**
	Suppose $f: A \rightarrow B$. If $f$ is a *bijection*, then $f^{-1}: B \rightarrow A$.

**Theorem**
	Suppose $f$ is a function from $A$ to $B$ , and suppose $f^{-1}$ is a function from $B$ to $A$. Then $f \circ f^{-1} = i_{B}$ and $f^{-1} \circ f = i_{A}$.

**Theorem**
	Suppose $f: A \rightarrow B$
	1. If there is a function $g: B \rightarrow A$ such that $g \circ f = i_{A}$ then $f$ is one-to-one.
	2. If there is a function $g: B \rightarrow A$ such that $f \circ g = i_{B}$ then $f$ is onto.

**Theorem**
	Suppose $f: A \rightarrow B$. Then the following statements are equivalent.
	1. $f$ is one-to-one and onto.
	2. $f^{-1}: B \rightarrow A$.
	3. There is a function $g: B \rightarrow A$ such that $g \circ f = i_{A}$ and $f \circ g = i_{B}$.

**Theorem**
	Suppose $f: A \rightarrow B$, $g: B \rightarrow A$, $g \circ f = i_{A}$ and $f \circ g = i_{B}$. Then $g=f^{-1}$.

**Definition**
	Suppose $f: A \rightarrow A$ and $C \subseteq A$. We will say that $C$ is closed under $f$ if $\forall x \in C (f(x) \in C)$.

**Definition**
	Suppose $f: A \rightarrow A$ and $B \subseteq A$. Then the *closure* of $B$ under $f$ is the smallest set $C \subseteq A$ such that $B \subseteq C$ and $C$ is closed under $f$, if there is such a smallest set. In other words, a set $C \subseteq A$ is the closure of $B$ under $f$ if it has the following properties:
	1. $B \subseteq C$.
	2. $C$ is closed under $f$.
	3. For every set $D \subseteq A$, if $B \subseteq D$ and $D$ is closed under $f$ then $C \subseteq D$.

For functions of two or more variables
**Definition**
	Suppose $f: A \times A \rightarrow A$ and $C \subseteq A$. We will say that $C$ is *closed under* $f$ if $\forall x \in C \forall y \in C (f(x,y) \in C$.

**Definition**
	Suppose $f: A \times A \rightarrow A$ and $B \subseteq A$. Then the *closure of $B$ under $f$* is the smallest set $C \subseteq A$ such that $B \subseteq C$ and $C$ is closed under $f$, if there is a such smallest set. In other words, a set $C \subseteq A$ is the closure of $B$ under $f$ if it has the following properties:
	1. $B \subseteq C$.
	2. $C$ is closed under $f$.
	3. For every set $D \subseteq A$, if $B \subseteq D$ and $D$ is closed under $f$ then $C \subseteq D$.

**Theorem**
	Suppose that $f: A \times A \rightarrow A$ and $B \subseteq A$. Then $B$ has a closure under $f$.

**Definition**
	Suppose $f: A \rightarrow B$ and $X \subseteq A$. Then the *image* of $X$ under $f$ is the set $f(X)$ defined as follows:
	$$
f(X) = \{ f(x) | x \in  X \} = \{ b \in  B | \exists x \in  X(f(x)=b) \}.
$$
	The *inverse image* of $Y$ under $f$ is the set $f^-1 (Y)$ defined as $$
f^-1(Y) = \{a \in  A| f(a) \in  Y\}.
$$


# Chapter 6 (Mathematical Induction)

**To prove a goal of the form $\forall n \in \mathbb{N} P(n)$**
	First prove $P(0)$, and then prove $\forall n \in \mathbb{N} (P(n) \rightarrow P(n+1)$). The first of these proofs is sometimes called the *base case* and the second the *induction step*
	

**(Strong Induction) To prove goal of the form $\forall n \in \mathbb{N} P(n):$**
	Prove that $\forall n \left[ (\forall k < n P(k) \rightarrow P(n) \right]$, where both $n$ and $k$ range over the natural numbers in this statement. Of course, the most direct way to prove this is to let $n$ be an arbitrary natural number, assume that $\forall k < N P(k)$, and then prove $P(n)$.

# Chapter 7 (Number Theory)
**Theorem (Fundamental theorem of arithmetic)**:
	For every integer $n > 1$ there are unique prime numbers $p_{1},p_{2},\dots, p_{k}$ such that $p_{1} \leq p_{2}\leq \dots p_{k}$ and $n=p_{1}p_{2}\cdots p_{k}$.

