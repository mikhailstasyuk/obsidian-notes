A mathematical modeling constraint that says that, in our [[Markov model|model]], we're sticking to a rule: each row depends solely on the one right before it, not anything earlier than that.

###### Example:
We define our $Model$ as follows:
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
$$\displaylines{
P(O|Model) = \\
=P(S_3,S_3,S_3,S_1,S_1,S_3,S_2, S_3|Model)=\\
P(S_3) 
\cdot P(S_3|S_3)
\cdot P(S_3|S_3)
\cdot P(S_1|S_3)
\cdot P(S_1|S_1)
\cdot \\
P(S_3|S_1)
\cdot P(S_2|S_3)
\cdot P(S_3|S_2)
}$$