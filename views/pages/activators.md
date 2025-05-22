<extends template="layouts/page.html" back="/repressors.html" next="/hill-functions.html" title="Activators"></extends>

# Activators

Just like repressors can inhibit a gene, **activators** can enable it. Just like repressors, activators' behavior can also be changed by small molecule inputs. Another example from our bacterial friends is the LuxR activator, which only acts as an activator in the presence of the compound ligand.

Here's a diagram, with the activator labeled A:

![A diagram of a gene with and without an activator.](/assets/activator-dg.png)
<i class="cite">Credit: CalTech</i>

For activators, we have a different curve (seen below in red, contrasted to the repressor curve in blue):

$$\beta(a)=\beta_0\frac{p_\text{bound}}{p_\text{tot}}=\beta_0\frac{a/K_d}{1 + a/K_d}$$


<div class="graph">
    <div id="binding-curve"></div>
    <div>
        <label for="kd">K<sub>d</sub></label>
        <input type="range" id="kd" value=1>
    </div>
    <div>
        <label for="beta0">β<sub>0</sub></label>
        <input type="range" id="beta0" value=1>
    </div>
</div>

As you can see, an activator has exactly the opposite effect as a repressor.

That was a short section. Onward!

<script>
    plot('#binding-curve', (kd, beta0) => [`${beta0}/(1 + x/(${kd}))`, `${beta0} * ((x/${kd})/(1 + (x/${kd})))`], ['#kd', '#beta0'], [[0, 10], [0, 10]])

    defineVars([
        ['P', 'The promoter of the DNA.'],
        ['A', 'The activator.'],
        ['p', 'A concentration of promoters, either unbound, bound (pbound), or total (ptot).'],
        ['x', 'The gene in question.'],
        ['K', 'Kd is the dissociation constant, a measure of the likelihood that the activator will unbind.'],
        ['β', 'β(x) is the simple binding curve. β0 is the maximum expression level.'],
        ['a', 'The concentration of activator.']
    ])
</script>
