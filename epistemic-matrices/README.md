# Linear Algebra & Agents’ Knowledge States

Graph structures are easy to represent as Boolean matrices. Suppose we have a graph with <i>n</i> nodes. 
<br>If nodes <i>i</i> and <i>j</i> share an edge, then entries <i>a</i>ᵢⱼ and <i>a</i>ⱼᵢ of an <i>n×n</i> matrix <i>A</i> are valued 1; if not, their value is 0.
<br>Epistemic states are often represented in modal logic using kripke structures, a kind of graph.
<br>It makes sense, therefore, that we can represent epistemic states using matrices.

Further, it is possible to compute belief revisions by multiplying epistemic matrices together (Hatano, Sano, & Tojo, 2015).
<br>An open question is whether other concepts in linear algebra (e.g. determinants) can be interpreted epistemically.
<br>Another, from the opposite direction, is to use modal logic to define meaningful new operations between matrices.

Thus, this project aims to represent epistemic games (e.g. hat problems) using linear algebra.
<br>The goal is to explore epistemic matrix notation through trial and error for philosophical problems.

Natural extensions include epistemic matrices with values other than 0 and 1, e.g. Markov chains.
<br>Another is dropping the symmetry requirement (<i>a</i>ᵢⱼ = <i>a</i>ⱼᵢ) to model asymmetric information.
<br>It would also be interesting to try to integrate epistemics into other matrix-based problems.

As the project goes along, I’ll post R code for different epistemic games.
<br>I'll also post tutorials if I find any cool examples (e.g. formalizing a short story).

&nbsp;

<b>References</b>
<li>Bradley, I. & Meek, R. (1986). <i>Matrices & Society</i>. Princeton, NJ: Princeton University Press.</li>
<li>Cantwell, J. (2005) “A Formal Model of Multi-Agent Belief-Interaction.” <i>Journal of Logic, Language and Information</i> 14(4), pp. 397-422</li>
<li>Fusaoka, A., Nakamura, K., Sato, M. (2006). “<a href="https://link.springer.com/chapter/10.1007/978-3-540-69619-3_3">On a Linear Framework for Belief Dynamics in Multi-agent Environments</a>.” <i>Proceedings of 7th International Workshop in Computational Logic in Multi-Agent Systems</i>, pp. 41-59</li>
<li>Hatano, R., Sano, K., Tojo, S. (2015). “Linear Algebraic Semantics for Multi-Agent Communication.” <i>Proceedings of the International Conference on Agents and Artificial Intelligence (ICAART-2015)</i>, pp. 174-81</li>
<li>Hatano, R., Sano, K., Tojo, S. (2015). “Usage Sample for Belief Calculator.” Retrieved from http://cirrus.jaist.ac.jp:8080/wp-content/uploads/2014/10/sample.pdf [<a href="http://cirrus.jaist.ac.jp:8080/20140407/collective-belief-revision">web</a>]</li>
<li>Liau, C. (2004). “Matrix Representation Of Belief States: An Algebraic Semantics For Belief Logics.” <i>International Journal of Uncertainty, Fuzziness and Knowledge-Based Systems</i> 12(5), pp. 613-33</li>
<li>Tojo, S. (2013). “<a href="http://ieeexplore.ieee.org/document/6643994/">Collective Belief Revision in Linear Algebra</a>.” <i>Proceedings of the 2013 Federated Conference on Computer Science and Information Systems</i> pp. 175–178</li>
<li>van Ditmarsch, H. & Kooi, B. (2015). <i>One Hundred Prisoners and a Light Bulb</i>. Heidelberg: Springer.</li>
