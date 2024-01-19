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
$\pi_{0} \rightarrow v_{\pi_{0}} \rightarrow \pi_{1} \rightarrow v_{\pi_{1}} \cdots \rightarrow \pi_{*} \rightarrow v_{*}$.

