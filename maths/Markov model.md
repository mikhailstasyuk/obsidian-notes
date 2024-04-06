In a Markov model, the sequence of data points is crucial. Each row relies on the preceding one, meaning their order is significant. Features aren't considered, except for the classes we aim to forecast, which are determined by the preceding row in the sequence.

##### Discrete Markov model
If we assume that the transition probabilities do not vary over time, we can find a probability of moving from state $S_i$ to $S_j$ using the [[Markov property]]: $$a_{i, j}=P(q_t=S_j|q_{t-1}=S_i) \text{‎‎‎ ‎ ‎ ‎ ‎}1≤i,j≤N,$$where $q_t$ is the state of the system at time $t$, and $N$ is the number of possible states.
$$a_{aj}≥0$$
$$\sum_{j=1}^N=$$