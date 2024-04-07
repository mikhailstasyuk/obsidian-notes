A mathematical modeling constraint that says that, in our [[Markov model|model]], we're sticking to a rule: each row depends solely on the one right before it, not anything earlier than that.

Example:
$$\begin{align}
& S_1 = rain/snow \\
& S_2 = cloudy \\
& S_3 = sunny \\
& P = \{a_{ij} = 
\begin{bmatrix}
0.4 & 0.3 & 0.3 \\
0.2 & 0.6& 0.2 \\
0.1 & 0.1 & 0.8
\end{bmatrix}
}
\end{align}$$