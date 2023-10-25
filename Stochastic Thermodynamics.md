# Chapter 3
In this theory we focus on systems that are in **mesostates** identified by a parameter $x$. One can view mesostates as systems in between micro and macro, where in general, some form of coarse-graining has been done on the the microscopic system. An example of a mesostate is the state of a collection of molecules for instance. 

We assume that our mesostate from equilibrium comes into contact with a heat reservoir. The idea is of the theory is to assume that such interacions are stochastic.

If we introduce a probability distribution $p_{x}(t)$ of finding the system in state $x$ at time $t$. The **master equation** $$
\frac{d}{dt}p_{x}(t) = \sum_{x' \neq x} [k_{x x'}p_{x'}(t) - k_{x'x}p_{x}(t)] 
$$describes how the distribution evolves over time.  When the lhs vanishes we say that the system is in a stationary distribution. In the special case where, each component of the sum above vanishes individually, we say that **detailed balance** is satisfied. That is, $$
k_{x'x}p_{x}^{st} = k_{x x'}p_{x'}(t) \quad \forall x' \neq x.
$$Furthermore, if detailed balance is satisfied, we say that the system is in equilibrium. 

Now in the simple case, when the system is placed in contact with a heat reservoir and in the absence of external forces the jump rates satisfy $$
\frac{k_{x x'}}{k_{x' x}} = \exp{(\frac{E_{x'} - E_{x}}{k_{B}T})}.
$$One can choose $k_{\dots}$ in many ways such that the above is satisfied. The choice depends on the system that is studied. 

The system can be perturb away from equilibrium in two different ways (not mutually exclusive)
- **Manipulation** In manipulation the energies depends on an external controlled parameter which may be dependent on time. For instance, $E_{x} = E_{x}(\lambda(t))$, where $\lambda(t)$ is the parameter being controlled. A classical example is the optical tweezer, where the energy of some state is excited so that a molecule is trapped.
- **Driving** Is a coupling of the system to an external agent, where energy is exchanged during jumps of the system from one state to the other. We denote $\delta_{x x'}$ the energy provided by the external source during jump from $x' \to x$. The energy provided breaks detailed balance and is immediately released to the reservoir.

When a system is perturbed by both manipulation and driving, we can study the energy released to the heat reservoir. The total energy released to reservoir when the system jumps from $x' \to x$ is $$
q_{x x'} = E_{x'} - E_{x} + \delta_{x x'}.
	$$Where $E_{x'} - E_{x}$ is the energy lost by the system (can be negative, in this case energy is gained by the reservoir) and $\delta_{x' x}$ is the energy instantaneously provided to the system by the external agent. On the timescale of a single jump, the manipulation can be seen as constant throughout the jump. Furthermore, in this timescale the reservoir cannot distinguish between equilibrium and non-equilibrium and therefore even out of equilbrium, the ratio between the jump rates is $$
\frac{k_{x x'}}{k_{x' x}} = \exp\left( \frac{q_{x x'}}{k_{B}T} \right).
$$This is called the generalized detailed balance condition. If a systems jump rate satisfy generalized detailed balance it is said to be **thermodynamically consistent**.

# Stochastic Work
In stochastic thermodynamics, we focus on single trajectories which are naturally stochastic. In this case, the work $w(\mathcal{x})$ for a single trajectory $x$ provided by the external agent is stochastic. When a system is being driven and manipulated the work provided my the external agent is $$
w(x)= \sum_{k=0}^n \int_{t_{k}}^{t_{k+1}} dt \frac{d \lambda}{dt} \frac{dE_{x_{k}}}{d \lambda} \, dx + \sum_{k=0}^n \delta_{x_{k}x_{k-1}}.
$$The first part is the work provided by manipulation between consecutive jumps and the last part is the energy provided at jumps. On the timescale of a single jump, the energy provided by manipulation is too small. Therefore the total heat exchanged with the reservoir is $$
q(x) = \sum_{k=1}^n q_{x_{k}x_{k-1}} = \sum_{k=1}^n (-E_{x_{k}}(t) + E_{x_{k-1}}(t) + \delta_{x_{k}x_{k-1}}).
$$This gives us that $$
w(x) - q(x) = E_{x_{f}} - E_{x_{0}}
$$which we call the **first law of stochastic thermodynamics** since it resembles  the first law of thermodynamics.

- [ ] What is mean by coarse-graining? and separation between microscopic and mesoscopic states?
- [ ] I think separation means that the time scale when of jumps and manipulation change are drastically different. That is, manipulation is very slow in comparison to jump scales.

