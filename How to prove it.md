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

