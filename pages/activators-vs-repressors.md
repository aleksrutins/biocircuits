<extends template="layouts/page.html" back="/hill-functions.html" title="Choosing Between Activators & Repressors"></extends>

# Choosing Between Activators & Repressors

We now have two ways of regulating gene expression, and they seem to be able to do the same things. Which should we use?

![An diagram of a gene with an activator and a gene with a repressor, side-by-side.](/assets/choosing-dg1.png)
<i class="cite">Credit: CalTech</i>

Michael Savageau researched this in the context of bacterial metabolic genes and digestive enzyme production in 1977.[^1] He found that genes in high demand were usually regulated by activators, while those in low demand were generally regulated by repressors.

![Low demand vs. high demand](/assets/choosing-dg2.png)
<i class="cite">Credit: CalTech</i>

He hypothesized the "use it or lose it" rule: essentially, the somewhat counterintuitive behavior was due to selection pressure that would eliminate the regulators if they were not used enough.

There have been other explanations, too:

- Shinar, et al. found the same result in 2006, but suggested a slightly more intuitive explanation.[^2] They suggested that proteins do not only bind to one receptor, but can bind to a range of similar receptors, even if a protein could cause problems in some of them. Since unoccupied receptors are more susceptible to binding errors, it's preferable to keep them occupied with the right protein than to take the risk of the wrong protein accidentally binding.
- Gerland and Hwa found the same results as Savageau in 2009, but restricted the scope of his reasoning.[^3] They suggested that, for small populations with long timescales (slow evolution), Savageau's reasoning was correct. In large populations with short timescales (fast evolution), though, they suggested that the opposite, more intuitive, option could occur: regulators could be used for the higher-demand proteins and activators for the lower-demand proteins, in the interest of reducing "wear and tear".

At this point, we're pretty sure that, in the majority of cases, regulators are used for lower-demand proteins, and activators are used for higher-demand proteins, as Savageau suggested. As shown by the varying ideas above, though, we still don't know why.

You've reached the end, for now. I hope to expand this site in the future. If you have any questions, comments, or suggestions, please feel free to [tell me about them](https://github.com/aleksrutins/biocircuits/issues/new).

<section class="footnotes">

[^1] Savageau, M. A. (1977). Design of molecular control mechanisms and the demand for gene expression. Proceedings of the National Academy of Sciences, 74(12), 5647–5651. <https://doi.org/10.1073/pnas.74.12.5647>

[^2] Shinar, G., Dekel, E., Tlusty, T., & Alon, U. (2006). Rules for biological regulation based on error minimization. Proceedings of the National Academy of Sciences, 103(11), 3999–4004. <https://doi.org/10.1073/pnas.0506610103>

[^3] Gerland, U., & Hwa, T. (2009). Evolutionary selection between alternative modes of gene regulation. Proceedings of the National Academy of Sciences, 106(22), 8841–8846. <https://doi.org/10.1073/pnas.0808500106>

</section>