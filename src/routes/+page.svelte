<script>
	import Counter from './Counter.svelte';
	import welcome from '$lib/images/biocircuitslogo.svg';
	import { reveal } from 'svelte-reveal';
	import SectionLink from './SectionLink.svelte';
	import 'svelte-reveal/styles.css'
</script> 

<svelte:head>
	<title>Home</title>
	<meta name="description" content="A layperson's introduction to biocircuits." />
</svelte:head>

<section>
	<h1>
		<span class="welcome">
			<img src={welcome} alt="Welcome" />
		</span>
	</h1>

	<p use:reveal class="sr__hide">
		Biological circuit design is the science of abstracting <em>natural</em> biological processes by defining them
		as you would any synthetic circuit. It also allows us to create our own circuits out of natural components.
		As <a href="https://biocircuits.github.io">CalTech's open-source Biocircuits course</a> states:
	</p>
	
	<blockquote use:reveal={{delay: 2000}} class="sr__hide">
		Indeed, the marvelous progression of electronic circuit capabilities [...] could well describe biological circuits decades from now. Like electronics, we may will soon be able to program cellular “miracle devices” to create “little gadgets” that address serious environmental and medical applications.
	</blockquote>

	<p use:reveal={{delay: 4000}} class="sr__hide">That CalTech course will be the main source for this presentation.</p>

	<p use:reveal={{delay: 5000}} class="sr__hide">Let's dive in!</p>

	<SectionLink useReveal={{delay: 5500}} href="/concepts">1. Concepts of Biocircuits</SectionLink>
	<SectionLink useReveal={{delay: 5550}} href="/simplest-circuit">2. The Simplest Circuit</SectionLink>
</section>

<style>

	h1 {
		width: 100%;
	}

	.welcome {
		display: block;
		position: relative;
		width: 100%;
		height: 0;
		padding: 0 0 calc(100% * 495 / 2048) 0;
	}

	.welcome img {
		position: absolute;
		width: 100%;
		height: 100%;
		top: 0;
		display: block;
	}
</style>
