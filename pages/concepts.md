<extends template="layouts/base.html" title="Concepts of Biocircuits"></extends>

<nav-links next="/simplest-circuit.html"></nav-links>

# Concepts of Biocircuits

Before we start designing circuits, we need to talk about **natural** (evolved) circuits and **synthetic** circuits.

- We often don't understand natural circuits, and even synthetic biocircuits often use components (such as certain proteins) that we don't fully understand.
- Synthetic and natural circuits often use different design principles. In electronic circuits, for instance, interference is generally avoided, and a circuit is often designed to follow a relatively simple and traceable path; in natural circuits, by contrast, "crosstalk" and complex networks between components are common, and are used to do things that electronic circuits can't.
- There's a lot of noise and variation in biological processes. As mentioned above, some natural circuits take great advantage of this.
- Electrical systems use positive and negative voltages and currents, which allow for positive and negative effects. Biocircuits are built out of molecules whose concentrations cannot be negative, so they have to use other ways of inverting effects.
- From a practical standpoint, even with technologies like CRISPR, we have a very limited ability to construct, test, and compare designs of biological circuits. This is improving rapidly, though!

Because of these differences and challenges, biological circuit design is done using **phenomenological modeling**: modeling relationships at a high level, independent of underlying molecular details.

At a high level, biological circuit design can be approached the same way as electronic circuit design, but with a different set of components: instead of wires, resistors, transistors, and the like, biocircuits use DNA, RNA, and proteins.

Again, though, even though we know a lot about biocircuit design, there are still a lot of fundamental things that we don't know, such as:

- What does each circuit do for the cell? (functions, design principles)
- What parts of the circuit do what? (mechanism)
- How can we control cells in predictable ways using these circuits? (biomedical applications)
- How can we design circuits for predictable behaviors in living cells? (synthetic biology & bioengineering)

In theory, natural and synthetic circuits _should_ share a common set of design principles. These principles are generally expressed as a statement: _Circuit feature X enables function Y_. We know a few already, but new ones are still being discovered.

That's the introduction. Onward - let's design a circuit!

<nav-links next="/simplest-circuit.html"></nav-links>