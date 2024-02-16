K-armed bandit using slot machines.
Use this as first excercise problem. Exercise 2.5 Sutton and Barto.
Something about exploration vs exploitation
Sample-average method for estimating action-values(Q(a))

constant vs decreasing step size 

optimistic initial value

Importance of exploration vs exploitation

boundary between agent and environment

Reward signal is a way to communicate to the agent what it wants to achieve, not how we want it to be achieved. What this means is that we should not reward sub-goals, instead, reward the agent for completing the task we have set out.

Episodic vs Continuing taskts

state-value function under $\pi $
action-value function under $\pi$.

# Dynamic Programming
Dynamic Programming(DP) needs a perfect discription of the env. However, most of the algorithms proposed later in the book are based on the same idea as DP.

Policy Evaluation also called prediction
calculate(evaluate) the value function of a given policy using the Bellman equation.

Iterative policy evaluation
Approximated the policy through iterations.
under which conditions does this converge?

The type of update performed in iterative policy evaluation is called an *expected update*. They are called this since the next approx. is based on the expected value of all on-step rewards and successor values.

Policy Improvement thm.

Policy iteration
$\pi_{0} \overset{E}\rightarrow v_{\pi_{0}} \overset{I}\rightarrow \pi_{1} \overset{E}\rightarrow v_{\pi_{1}} \cdots \overset{I}\rightarrow \pi_{*} \overset{E}\rightarrow v_{*}$,
where $\overset{E}\rightarrow$ denotes a policy *evaluation* and $\overset{I}\rightarrow$ denotes a policy *improvement*. Policy iteration, first improves the policy over all states for a given value function, using the action-value function. Then using the improved policy, it improves the value function using iterative policy evaluation and then updates the policy and so on. By the policy improvement thm, we can be sure that our policy will improve at each step for a given value function. 

Remember that policy evaluation step is in itself an iteration. However, in policy iteration, it is possible to truncate the evaluation step. The case where truncation is done to one update step for all states, it is called *value iteration*.

For the policy iteration algorithm, there are nice convergence results for the policy and value function.

Async. Dynamic Programming

Generalized Policy Iteration (GPI). Almost all RL algorithms are well described as GPIs.

What are backup diagrams and how can they be used.

# MC Methods
Monte-Carlo methods use averages to estimate the value function and optimal action. In the book they focus on episodic tasks to keep the rewards finite.  Furthermore, updates are done by an episode-by-episode basis not step-by-step (online). Sampling throughout an episode and finally updating after the episode. Then repeating.

Monte Carlo Prediction

first-visit and every-visit

Even in the case where dynamics are known using Monte-Carlo methods can make it simpler to predict. For instance if the state dynamics are complex but the one can simulate easily. 

An important fact about Monte Carlo methods is that the estimates are independent. That is, the update is not based on previous estimates. This means that these methods do not bootstrap.

It can be seen easily that this method is independent on the number of states for computation only the sample trajectory.

Since the dynamics are unknown it is better to estimate the action-value $q$ instead of the state-value. Since we need to determine how to act optimally, it is not enough to know the state-value to determine the action in contrary to DP.

To properly estimate the action-value one must maintain exploration otherwise not all pairs will be visited. For instance in the case of a deterministic policy. In this case, only specific state-action pairs will be visited.

exploring starts is one way of maintaining exploration.

Another approach is to use a non-deterministic policy.

Monte-Carlo control is very similar to GPI for DP. In this case however, evaluation of states are made after each episode. The observed returns are used for policy evaluation and then the policy is improved at all the states visited in the episode.  A simple algorithm along these lines is called MCES, for Monte Carlo with Exploring Starts.

On-policy vs off-policy

an on-policy methods attempt to evaluate or improve the policy used to make decisions or generate the episodes. Off-policy on the other hand, evaluate or improve a policy different from the data. 

Monte-Carlo ES is a of on-policy method.

Epsilon-soft policies are policies where the probability of choosing a non greedy action is greater than the uniform choice. That is $\pi(a|s) \geq \frac{\epsilon}{\mid \mathcal{A(s)}\mid}$. In some sense, the $\epsilon$-greedy strategy is the one closest o greedy.

Using Policy iteration using $\epsilon$-soft policies will only give us the best $\epsilon$-soft policy in the end. Not the optimal of all strategies.

Off-policy methods consists of two policies. One is called the target and the other the behaviour policy. The idea is that we use the behaviour policy to sample interactions and gather data but what we seek is to find the target. 

For this to be viable we need that $\pi(a|s)>0$ implies $b(a|s)>0$. This is the notion of coverage. That is, they have to be able to take the same actions.

The mechanism to use $b$ to solver for $\pi$ is to use importance sampling. The importance sampling rations weights the returns for each step and then gives us the correct expectation. This is a neat trick. 

Weighted importance sampling vs Ordinary importance sampling. The former is a biased estimate (bias asymptotically going to zero) but with lower variance. The weighted version is weighted sum of importance sampling ration and returns.

We can make us of *incremental implementation* to remove the need to store all the values and visits. 

The key aspect of MC methods is that they can learn directly from experience and that they do not bootstrap!


# TD Learning
TD learning is a kind of combination of both MC methods and DP.  It can learn directly from experience like MC but uses previous estimates to update like dp.

TD-error: 
$$
\delta_{t} = G_{t} - V(S_{t}) = R_{t+1} + \gamma V(S_{t+1}) - V(S_{t})
$$
This can be seen as the  error between estimates.

batch updating is to use the samples over and over again to update the value function (for prediction) until it converges. This make sense since the value function bootstraps in TD methods so after each update the value function changes. Which changes the TD-error. This can be continued until the TD-error goes to $0$

Sarsa: On-policy

Q-Learning: Off-policy

Expected Q-Learning as an improvement over the above two. It uses the expected reward as the return.

Windy grid-world exercise!

Maximization bias is due the max operation in the TD-methods.

double learning to remove this maximization bias.

afterstate: tic-tac-toe example. This is how we should deal with games that can reach a state $S_{t+1}$ from multiple $(S_{t},A_{t})$ pairs. It may be more useful, in these cases, to instead evaluate the after state.

# n-step Bootstrap
A in between of TD and MC methods. Instead of a single step(TD) or the full episode(MC), an update based on a few more steps, n-steps say, may be better. That is precisely what n-step bootstrapping is. This somehow connects to *eligibility traces*. 


# Approximation Methods

The goal is to approximate functions, using a suitable function approximation technique. 

Now the approximate function is parametrised by some weight $\theta $. An estimate can be written as $\hat{v}(s; \theta ) \approx v_{\pi}(s)$. This can be any parametrised approximate function.

What is partial observability?

On-policy distribution: In some sense a distribution of how important we find a state. It is used to calculate the Mean Square Value Error VE. Typically, it is chosen to be the amount of time spent in a state. 

State aggregation, i.e grouping states.

Memory based function approximation is a non-parametric method, where one stores data and queries data in the vicinity for instance to computed the value for the given state. We can use kernel method to describe how much $s'$ influences the query state $s$ by the kernel $k(s,s')$.

Kernel trick?? Express a kernel as a dot product of features??

Can the average reward setting be applied to approximate episodic tasks?

# Eligibility Traces
