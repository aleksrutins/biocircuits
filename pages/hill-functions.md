<extends template="layouts/base.html" title="Ultrasensitivity & the Hill Function"></extends>

<nav-links back="/activators.html" next="/activators-vs-repressors.html"></nav-links>

# Ultrasensitivity & the Hill Function

The models we've been using are all well and good to capture the general idea of the effects of activators and repressors, but in the real world, many responses respond in a more switch-like, or **ultrasensitive**, way. This can come from many different things; for instance, binding a protein at one site might increase the affinity for that protein at an adjacent site, or you could have a protein with an alternative shape that could be stabilized by binding agonist effector molecules (basically, molecules that change its shape) into a shape that has a higher affinity for those same molecules. What you generally see in an ultrasensitive response is that an increasing concentration has a little effect for a while, and then suddenly a large effect.

The **Hill function** is a phenomenological way of analyzing ultrasensitive systems. There are two versions of it, the activating Hill function (for analyzing activators, shown in blue):

$$f_\text{act}(x)=\frac{x^n}{k^n + x^n}=\frac{(x/k)^n}{1 + (x/k)^n}$$

And the repressive Hill function (for analyzing repressors, shown in red):

$$f_\text{rep}(x)=\frac{k^n}{k^n + x^n}=\frac{1}{1 + (x/k)^n}$$

This function has two parameters:

- $k$ is the concentration at which the function attains half of its maximum value. This is called the **Hill activation constant**.
- $n$ is the **Hill coefficient**. This is a way of parameterizing how ultrasensitive the response is. When $n=1$, the Hill function is identical to the simple binding curves. As $n$ increases, the function becomes sharper and more ultrasensitive. At the limit when $n=\infty$, the Hill function is a perfect step function.

<div class="graph">
    <div id="hill-graph"></div>
    <div>
        <label for="k">k</label>
        <input type="range" id="k" value=1>
    </div>
    <div>
        <label for="n">n</label>
        <input type="range" id="n" value=1>
    </div>
</div>

To find production rates with the Hill function, just add $\beta_0$:

- Activator (shown in blue): $\beta(a)=\beta_0f_\text{act}(a)=\beta_0\frac{(a/k)^n}{1 + (a/k)^n}$
- Repressor (shown in red): $\beta(r)=\beta_0f_\text{rep}(r)=\beta_0\frac{1}{1 + (r/k)^n}$

<div class="graph">
    <div id="hill-graph-prod"></div>
    <div>
        <label for="k-prod">k</label>
        <input type="range" id="k-prod" value=1>
    </div>
    <div>
        <label for="n-prod">n</label>
        <input type="range" id="n-prod" value=1>
    </div>
    <div>
        <label for="b0">β<sub>0</sub></label>
        <input type="range" id="b0" value=1>
    </div>
</div>

Onwards!

<nav-links back="/activators.html" next="/activators-vs-repressors.html"></nav-links>

<script>
    plot('#hill-graph', (k, n) => [`((x/${k})^(${n}))/(1 + ((x/${k})^(${n})))`, `1/(1 + ((x/${k})^(${n})))`], ['#k', '#n'], [[0, 10], [0, 1]])
    plot('#hill-graph-prod', (k, n, b0) => [`(${b0}) * ((x/${k})^(${n}))/(1 + ((x/${k})^(${n})))`, `(${b0})/(1 + ((x/${k})^(${n})))`], ['#k-prod', '#n-prod', '#b0'], [[0, 10], [0, 10]])

    defineVars([
        ['f', 'The Hill function.'],
        ['P', 'The promoter of the DNA.'],
        ['A', 'The activator.'],
        ['p', 'A concentration of promoters, either unbound, bound (pbound), or total (ptot).'],
        ['k', 'The concentration at which the function attains half of its maximum value.'],
        ['n', 'The Hill coefficient, a measurement of how ultrasensitive the response is.'],
        ['β', 'β(x) is the simple binding curve. β0 is the maximum expression level.'],
        ['r', 'The concentration of repressor.'],
        ['a', 'The concentration of activator.']
    ])
</script>