```tasks
not done
sort by created
path includes {{query.file.path}}
```
Let $C_{0}^{\infty}$ denote the set of smooth functions with compact support inte $D$ and let $H_{0}(D)$ be the [[Hilbert Space]] closure of $C_{0}^{\infty}$ with Dirichlet inner product $$
\int \frac{1}{2\pi} \nabla f(z) \cdot \nabla g(z)\, dz. 
$$$H_{0}(D)$ is a [[Topology|seperable]] Hilbert Space.

Now, we want to define the Gaussian Free Field as the "standard" vector Gaussian in this space. To begin with , let $(\phi_{n})_{n\geq 1}$ be a an orthonormal base for $H_{0}(D)$ and $(\alpha_{n})_{n\geq 1}$ as independent normally distributed $N(0,1)$. For each $N$ define the $$
\Phi_{N} := \sum_{n}^N \alpha_{n} \phi_{n}.
$$ We define the Gaussian Free Field as the limit of the object above. That is, $$
\Phi = \lim_{ n \to \infty } \Phi_{n}
$$ It is clear that $\Phi_{N} \in H_{0}(D)$ for each $N$. However, $\Phi$ does not converge in $H_{0}(D)$. This can be seen from the strong law of large numbers. That is, $$
\frac{\lVert \Phi_{N} \rVert}{N} \to E[\alpha^2] = 1.
				$$ Clearly, $\Phi$ is not in $H_{0}(D)$. However, it can be shown that for each $f \in H_{0}(D)$ the object $(\Phi, f)_{\nabla }$ converges in $L^2(\mathbb{P})$ to a random variable with law $N(0, \lVert f \rVert_{\nabla}^2)$.  See proof of this in under Lemma 2.1 in Lukas Schoug's notes.  

Define $$
\Pi(\rho_{1}, \rho_{2}) = \int G_{d}(z,w)\rho_{1}(z)\rho_{2}(w) \, dzdw. 
$$Let also, $\Pi(\rho) = \Pi(\rho, \rho )$. Lukas Schoug's shows in his notes that $\Pi(\cdot )$ has a few nice properties. 
First, if $D$ is a bounded region and $f \in C^{\infty}_{0}(D)$ and $\rho$ is smooth such that $\rho =- \frac{1}{2\pi}f$, then $\rho \in \mathcal{M}$ (the set of **Radon** measures such that $\Pi < \infty$) and $\Pi(\rho) = (f,f)_{\nabla}$. A nice result is also that one can approximate $\rho \in \mathcal{M}$ with $(\rho_{j})_{j\geq 1}\in C_{0}^\infty$. That is, if $D$ is bounded then, there exists a sequence $(\rho_{j})_{j\geq 1}$ such that $\rho_{j} \to \rho$ in $\mathcal{D}'(D)$ (in the [[Distribution Theory|distributional]] sense) and $\Pi(\rho_{j}) \to \Pi(\rho)$. 

An important proposition
### Proposition
Let $D$ be a domain with harmonically non-trivial boundary and let $\Phi_{N}$ be defined as above. Then, for any $\rho \in \mathcal{M}$, the limit $$
(\Phi, \rho) := \lim_{ n \to \infty } (\Phi_{N}, \rho)
$$exists in $L^2(\mathbb{P})$ and $(\Phi, \rho) \sim  N(0, \Pi(\rho))$.  

- [ ] Look at remark 3.14 and try to construct the Brownian Bridge on the interval mentioned.

# Regularity in Sobolev spaces with negative index
Let $D$ be bounded. For $s \in \mathbb{R}$, the Sobolev space $H_{0}^s(D)$ is the Hilbert space completion of $C_{0}^\infty$ with respect to the inner product $$
(f,g)_{H_{0}^s} := \sum_{n \geq 0} \lambda_{n}^s (f, \psi_{n})(g, \psi_{n}).
$$**Proposition**
Suppose $D$ is a bounded domain. Let $(\alpha_{n})_{n \geq 1}$ be i.i.d $N(0,1)$ random variables and $(\phi_{n})_{n \geq 1}$ an orthonormal basis for $H_{0}(D)$. Then the series $\sum_{n \geq 1} \alpha_{n}\phi_{n}$ converges almost surely in $H_{0}^s(D)$ for all $s<0$.

# Conformal invariance of GFF
Let $\varphi: D \to \tilde{D}$ be a conformal map and $f,g \in C_{0}^\infty(D)$, then, $$
(f,g)_{\nabla} = (f \circ \varphi^-1, g \circ \varphi^-1)_{\nabla}.
	$$This implies that if $\Phi = \sum_{n \geq 1} \alpha_{n}\phi_{n}$ is a zero-boundary GFF on $D$, then, $\Phi \circ \varphi^{-1}= \sum_{n \geq 1}\alpha_{n} \phi_{n} \circ \varphi^{-1}$ is a zero-boundary GFF on $\tilde{D}$ and its action as an element of $\mathcal{D}'(\tilde{D})$ is $(\Phi \circ \varphi, f ) = (\Phi, |\varphi'|^2$  

# Markov Property
saws