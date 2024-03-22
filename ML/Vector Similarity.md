We can measure distance between two vectors in two ways:

- L2 (Euclidean) Distance
	This method involves applying a formula, typically the square root of the sum of the squared differences between corresponding elements of the two vectors.
- Cosine Similarity
	Cosine similarity assesses the similarity of two vectors by determining the cosine of the angle between them. Essentially, it's like checking if the vectors are aligned (0 degrees) or perpendicular (90 degrees). 
	To achieve this, we compute the dot product of the vectors divided by the product of their lengths, which normalizes the calculation, removing the influence of their magnitudes. The outcome consistently falls within the range of -1 to 1.