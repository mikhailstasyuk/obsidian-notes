In a Markov model, the sequence of data points is crucial. Each row relies on the preceding one, meaning their order is significant. Features aren't considered, except for the classes we aim to forecast, which are determined by the preceding row in the sequence.
[Source](https://youtu.be/cYjPUMAqIUo?si=PzkfNg6vbtQJez7Y)

##### Discrete Markov model
If we assume that the transition probabilities do not vary over time, we can find a probability of moving from state $S_i$ to $S_j$ using the [[Markov property]]: $$
\displaylines{
a_{i, j}=P(q_t=S_j|q_{t-1}=S_i) \text{‎‎‎ ‎ ‎ ‎ ‎}1≤i,j≤N \\ \\
a_{ij}≥0\\
\sum_{j=1}^Na_{ij}=1,
}$$where $q_t$ is the state of the system at time $t$, and $N$ is the number of possible states. 

Here, each state corresponds to an observable event.
###### Example:
We define our $Model$ (states, transition matrix and the probability of starting in particular state) as follows:
$$\begin{align}
& S_1 = rain/snow \\
& S_2 = cloudy \\
& S_3 = sunny \\
& P = \{a_{ij}\} = 
\begin{bmatrix}
0.4 & 0.3 & 0.3 \\
0.2 & 0.6& 0.2 \\
0.1 & 0.1 & 0.8
\end{bmatrix} \\
\end{align}$$
- What is probability that the weather for the next 7 days will be _sun-sun-rain-rain-sun-cloudy-sun_?
- Formally, given an observation sequence:
$$\displaylines{
	O = \{S_3,S_3,S_3,S_1,S_1,S_3,S_2, S_3\} \\
	t = 1,2,3,4,5,6,7,8
	}
	$$
- What is $P(O|Model)$?
- Using the Markov property we can break it down to:
$$\displaylines{
P(O|Model) = \\
=P(S_3,S_3,S_3,S_1,S_1,S_3,S_2, S_3|Model)\\
P(O|Model) = 
P(S_3) 
\cdot P(S_3|S_3)
\cdot P(S_3|S_3)
\cdot P(S_1|S_3)
\cdot P(S_1|S_1)
\cdot \\ 
P(S_3|S_1)
\cdot P(S_2|S_3)
\cdot P(S_3|S_2)\\ \\
P(O|Model) = \\ 
\pi_3 
\cdot a_{33}
\cdot a_{33}
\cdot a_{31}
\cdot a_{11}
\cdot a_{13}
\cdot a_{32}
\cdot a_{23}=\\ \\
P(O|Model) = \\
1
\cdot 0.8
\cdot 0.8 
\cdot 0.1
\cdot 0.4
\cdot 0.3
\cdot 0.1
\cdot 0.2 = \\
= 1.536 \times 10^{-4}}$$