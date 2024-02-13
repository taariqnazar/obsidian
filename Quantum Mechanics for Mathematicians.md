# Chapter 2
## Basic Principles of Quantum Mechanics

**Definition**
	An operator $A$ is closed if its graph $\Gamma(A) = \{ (x, Ax) \in \mathcal{H} \times \mathcal{H} | x \in D(A)\}$ is a closed subset of $\mathcal{H} \times \mathcal{H}$.

If the domain of $A$ is dense in $\mathcal{H}$ 

>(Why is this necessary?) 

the domain $D(A^*)$ of the *adjoint operator*  $A^*$ consists of $\phi \in \mathcal{H}$ such that there is $\eta \in \mathcal{H}$ with the property that
$$
(A \psi, \phi) = (\psi, \eta ) \; \forall \psi \in D(A),
$$
and the operator $A^*$ is defined by $A^* \phi = \eta$. 

**Definition**
	An operator $A$ is called *symmetric* if $(A \psi, \phi) = (\psi, A \phi) \quad \forall \phi,\psi \in D(A).$

**Definition**
	The *regular set* of a closed operator $A$ with a dense domain $D(A)$ is the set $\rho(A) = \{ \lambda \in \mathbb{C} | A - \lambda I: D(A) \to \mathcal{H} \textrm{ is a bijection with a bounded inverse }\}$ and for $\lambda \in \rho(A)$, the bounded operator $R_{\lambda}(A) = (A-\lambda I)^{-1}$ is called the *resolvent* of $A$ at $\lambda$. The regular set is open and its complement $\sigma(A) = \mathbb{C} \backslash \rho(A)$ is the *spectrum* of A. The subset $\sigma_{p}(A)$ of $\sigma(A)$ consisting of eigenvalues of $A$ of finite multiplicity is called the *point spectrum*.

The spectrum of $A$ describes the set of complex numbers that make the operator $A - \lambda I$ non-bijective. That is, the kernel of this operator is a subspace of $\mathcal{H}$ (The Eigen-space).

>How does the point spectrum differ from the spectrum?
>I have found som examples of people using the shift operator? read more about this.

An operator is *Hermitian or self-adjoin* if $A = A^*$. For such operators $\sigma(A) \subset \mathbb{R}$. A symmetric operator $A$ is called *essentially self-adjoint* if its closure $\bar{A} = A^{**}$ is *self-adjoint*.

> What is essentially self-adjoint?
> When the closure of the operator is self adjoint. Where the closure of the operator is the smallest extension of the operator such that the graph of the extension is closed.

**Definition**
	Denote $\mathcal{L(\mathcal{H})}$ by the $\mathbb{C}^*$-algebra of bounded linear operators on $\mathcal{H}$ with the operator norm $\mid\mid \cdot \mid \mid$. An operator $A \in \mathcal{L(\mathcal{H})}$ is called *compact* if it maps bounded set in $\mathcal{H}$ into pre-compact sets. 

**Definition**
	An operator $A \in \mathcal{C(\mathcal{H})}$(Space of compact operators) is of *trace class* if $\mid\mid A\mid\mid_{1} = \sum_{n=1}^{\infty} \mu_{n}(A) < \infty$. Where $\mu_{n}(A)$ are singular values of $A$ and $\mu_{n}(A) = \sqrt{ \lambda_{n}(A) } \geq 0$, where $\lambda_{n}(A)$ are eigenvalues of $A^*A$. Equivalently, an operator $A \in \mathcal{L(\mathcal{H})}$ is of trace class iff for every orthonormal basis $\{ e_{n} \}_{n=1}^{\infty }$ for $\mathcal{H}$, $\sum_{n=1}^{\infty} \mid(Ae_{n}, e_{n})\mid < \infty$. The *trace* of a trace class operator $A$ is defined by $Tr(A) = \sum_{n=1}^{\infty} (Ae_{n},e_{n})$.


**Mathematical formulation**. The following axioms constitute the basis of quantum mechanics.
	**A1.** With every *quantum system* there is associated an infinite-dimensional separable complex Hilbert space $\mathcal{H}$, in physics terminology called the *space of states*. The Hilbert space of *composite quantum system* is a tensor product of Hilbert spaces of component systems.
	**A2.** The set of *observables* $\mathcal{A}$ of a quantum system with Hilbert space $\mathcal{H}$ consists of all self-adjoint operators on $\mathcal{H}$. The subset $\mathcal{A}_{0} = \mathcal{A} \cap \mathcal{L(\mathcal{H})}$ of bounded observables is a vector space on $\mathbb{R}$.
	**A3.** The set of *states* $\mathcal{S}$ of quantum system with a Hilbert space $\mathcal{H}$ consists of all positive (and hence self-adjoint) trace class operators $M$ with $Tr M = 1$. *Pure states* are projection operators onto one-dimensional sub-spaces of $\mathcal{H}$. For $\psi \in \mathcal{H}$, $\mid \mid \psi \mid \mid = 1$, the corresponding projection onto $\mathbb{C}\psi$ is denoted by $P_{\psi }$. All other states are called *mixed states*.
	**A4.** A process of measurement is the correspondence $\mathcal{A} \times \mathcal{S} \ni(A,M) \to \mu_{A} \in \mathcal{P(\mathbb{R})}$, which to every observable $A \in \mathcal{A}$ and state $M \in \mathcal{S}$ assigns a probability measure $\mu_{A}$ on $\mathbb{R}$. For every Borel subset $E \subseteq \mathbb{R}$, the quantity $0 \leq \mu_{A}(E) \leq 1$ is the probability that for a quantum system in state $M$ the result of a measurement of the observable $A$ belongs to $E$. The expected value of of the observable $A \in \mathcal{A}$ in state $M \in \mathcal{S}$ is $\bra{A}\ket{M}$
 