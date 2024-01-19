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

