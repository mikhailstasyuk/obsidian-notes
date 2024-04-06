In a Markov model, the sequence of data points is crucial. Each row relies on the preceding one, meaning their order is significant. Features aren't considered, except for the classes we aim to forecast, which are determined by the preceding row in the sequence.

##### Discrete Markov model
Using the [[Markov property]], we can find a probability of moving from state  of the system by looking at its previous state: $$a_{i, j}=P(q_t=S_j|q_{t-1}=S_i) \text{‎‎‎ ‎ ‎ ‎ ‎}1≤i,j≤N,$$where $q_t$ is the state of the system at time $t$, $S$ is a state,  