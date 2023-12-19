These are notes on the book **How to prove it** by Velleman.
# Chapter 1 ( Sentential Logic)

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


