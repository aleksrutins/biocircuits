<extends template="layouts/base.html" title="The Simplest Circuit"></extends>

<nav-links back="/concepts.html"></nav-links>

# The Simplest Circuit

The key idea for this section is that **steady-state expression levels depend on protein production and removal rates**.

Let's break that down.

First, steady-state conditions mean that all inputs to the system are constant forever. That simplifies things quite a bit.

Expression levels are just the net amount of proteins produced.

So, how many proteins there are, with no variables, depends on how many proteins are being created and how many are being removed. Simple, right?

Now, the circuit. This circuit is the simplest possible circuit: a single gene &mdash; let's call it \\(x\\) &mdash; coding for a single protein \\(p\\) at a rate of \\(\beta\\) molecules per unit time.

![alt text](/assets/simplest-circuit-dg1.png)
<i class="cite">Credit: CalTech</i>

However, in real life, proteins aren't just made forever; they're also reduced, through both _active degradation_ (being broken down) and _dilution_ (the cell getting bigger, which reduces the protein's _concentration_). That's represented above by the dashed circle. For simplicity, let's say that it's being reduced at a rate constant \\(\gamma\\) (that letter is a gamma, for anyone who wanted to know). Note that this is not just a rate &mdash; it's a _rate constant_, meaning that the actual rate is proportional to the number of molecules. More molecules, more reduction.

There's a differential equation for this:
$$ \frac{dx}{dt} = \text{production} - (\text{degradation} + \text{dilution}) $$
Or:
$$ \frac{dx}{dt} = \beta - \gamma x $$
Since \\(\gamma\\) counts both degradation and dilution, we can say that:
$$ \gamma = \gamma_\text{degradation} + \gamma_\text{dilution} $$

Since we're getting into the math, a quick tip: if you (like me) forget what a variable does halfway through the page, just hover over it and it'll tell you what it does. Anyway, back to the show.

To find the net production of the protein under steady state conditions, set the derivative to zero and solve for \\(x\\):

$$0 = \beta - \gamma x$$
$$-\beta = -\gamma x$$
$$\frac{-\beta}{-\gamma} = x$$
$$\frac\beta\gamma = x$$

And we find that **steady-state protein concentration is proportional to the ratio of production and removal rates**. This is another core concept that should be built as intuition.

Since I haven't used the interactive graphing functions I took the bandwidth to import yet, let's graph the general shape of the protein concentration function under the simplest possible conditions (play with the sliders!):

$$f(t)=xt=\frac{\beta t}{\gamma}$$

<div class="graph">
    <div id="concentration-graph"></div>
    <div>
        <label for="beta">β</label>
        <input type="range" id="beta">
    </div>
    <div>
        <label for="gamma">γ</label>
        <input type="range" id="gamma">
    </div>
</div>

It's a line &mdash; for now. Onwards!

<nav-links back="/concepts.html"></nav-links>

<script>
    plot('#concentration-graph', (beta, gamma) => `(${beta}x)/${gamma}`, ['#beta', '#gamma'])
    defineVars([
        ['γ', 'The rate constant for reduction of protein concentration.'],
        ['β', 'The rate of protein production, in molecules per unit time.'],
        ['x', 'The gene in question.'],
        ['p', 'The protein in question.']
    ])
</script>