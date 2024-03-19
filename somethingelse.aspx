<%@ Page Title="Article" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="somethingelse.aspx.cs" Inherits="RetailShopSystem.somethingelse" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

	<style>
		/*
LINKS:
Typetura docs: https://docs.typetura.com/creating-with-typetura/creating-your-own-typographic-system
Cubic Bezier: https://cubic-bezier.com/
Fraunces: https://fraunces.undercase.xyz/
Google variable fonts: https://css-tricks.com/getting-the-most-out-of-variable-fonts-on-google-fonts/
Grid system: https://gist.github.com/scottkellum/bb46ea68c23e630842ee80c37513a3e6
*/

/* Import our variable font Fraunces */
@import url("https://fonts.googleapis.com/css2?family=Fraunces:opsz,wght,SOFT,WONK@9..144,100..900,0..100,0..1&family=Fraunces:ital,opsz,wght,SOFT,WONK@1,9..144,100..900,0..100,0..1&display=swap");

/* Variables and page setup */

html {
	
	line-height: 1.35;
	;
	padding-bottom: 20vh;

	/* Typetura */
	--tt-key: html;
	--tt-max: 900;
	--tt-ease: cubic-bezier(0, 0.78, 0.53, 1);

	/* Grid */
	--max-width: 1200px;
	--columns: 6;
	--gutter: 1.5rem;

	/* Color */
	--primary: #f4663a;
	--background: #efeded;
	--background-alt: #ffffff;
	--text: #31355b;
}
@keyframes html {
	0% {
		font-size: 0%;
	}

	100% {
		font-size: 125%;
	}
}
* {
	--grid: minmax(var(--gutter), 1fr)
		repeat(
			var(--columns),
			minmax(
				0,
				calc(
					(var(--max-width) - (var(--gutter) * (var(--columns) - 1))) /
						var(--columns)
				)
			)
		)
		minmax(var(--gutter), 1fr);
}

/* Element styles */

body {
	margin: 0;
}

img {
	width: 100%;
}

/* Typography */

.masthead {
	color: var(--primary);
	mix-blend-mode: multiply;
	text-align: center;
	font-variation-settings: "WONK" 1, "SOFT" 30;
	--tt-key: masthead;
	--tt-max: 1200;
	--tt-ease: ease-in-out;
	margin: 0.5em 0 -0.5em;
}
@keyframes masthead {
	0% {
		font-size: 1rem;
		margin-bottom: -0.45em;
		font-weight: 600;
	}
	100% {
		font-size: 6.5rem;
		margin-bottom: -0.375em;
		font-weight: 500;
	}
}

.primary-headline {
	--tt-key: primary-headline;
	--tt-ease: cubic-bezier(1, 0, 1, 1);
	--tt-max: 585;
	line-height: 1;
	font-variation-settings: "SOFT" 0, "WONK" 1;
	margin: 0.5rem 0;
}
@keyframes primary-headline {
	0% {
		font-size: 1rem;
		font-weight: 500;
	}
	100% {
		font-size: 4rem;
		font-weight: 300;
	}
}

.meta {
	font-style: italic;
	margin: 0.25rem 0;
	font-size: 0.75rem;
}

.entry-summary {
	margin: 0.25rem 0;
}

/* Layout */

.main {
	column-gap: var(--gutter);
	grid-template-columns: var(--grid);
	padding: var(--gutter);
}

.entry {
	margin-bottom: var(--gutter);
}

.entry,
.entry-content {
	display: flex;
	flex-direction: column;
}

.entry-img {
	aspect-ratio: 5 / 3;
	object-fit: cover;
}

.entry-date {
	order: -1;
}

/* Module overrides */

.entry-lede time {
	margin-bottom: 1rem;
}

.entry-lede time::after {
	content: "";
	display: block;
	width: calc(100% + (var(--gutter) * 2));
	height: 1px;
	margin-left: calc(var(--gutter) * -2);
	background: var(--primary);
	mix-blend-mode: multiply;
	margin-top: 0.67rem;
}

/* Breakpoints */

@media (min-width: 30em) {
	html {
		--columns: 12;
	}
	.main,
	.entry-lede {
		padding: 0;
		display: grid;
	}

	.entry,
	.trending {
		grid-column-start: 3;
		grid-column-end: span 10;
	}

	.entry-lede {
		column-gap: var(--gutter);
		grid-template-columns: var(--grid);
		grid-column-start: 1;
		grid-column-end: span 14;
		margin-bottom: 4rem;
	}

	.entry-lede > .entry-img {
		aspect-ratio: auto;
		grid-column-start: 1;
		grid-column-end: span 10;
	}

	.entry-lede .entry-content {
		grid-column-start: 3;
		grid-column-end: span 11;
		margin: -2.5rem calc(var(--gutter) * -1) 0;
		background: var(--background-alt);
		padding: 0.5rem var(--gutter) 1rem;
	}
}
@media (min-width: 50em) {
	html {
		--columns: 24;
	}

	.main::before,
	.main::after {
		content: "";
		display: block;
		grid-column-start: 8;
		grid-column-end: 26;
		grid-row-start: 2;
		grid-row-end: 3;
		background: var(--background-alt);
		margin: 0 calc(var(--gutter) * -1);
		z-index: -1;
	}
	.main::after {
		grid-column-start: 2;
		background-color: var(--primary);
		height: 1px;
		mix-blend-mode: multiply;
	}

	.entry {
		grid-column-end: span 8;
		margin-bottom: var(--gutter);
	}
	.entry:nth-child(n + 2) {
		margin-top: 2rem;
		grid-row-start: 2;
	}
	.entry:nth-child(2) {
		grid-column-start: 9;
	}
	.entry:nth-child(3) {
		grid-column-start: 17;
	}

	.entry-lede {
		column-gap: var(--gutter);
		grid-template-columns: var(--grid);
		grid-column-start: 2;
		grid-column-end: span 26;
		margin-bottom: 5rem;
	}

	.entry-lede > .entry-img {
		aspect-ratio: auto;
		grid-column-start: 1;
		grid-column-end: span 12;
	}

	.entry-lede .entry-content {
		grid-column-start: 14;
		grid-column-end: span 12;
		margin: 0.5rem 0;
		padding: 4rem 0 0;
		background: none;
	}

	.trending {
		grid-row-start: 2;
		grid-column-start: 2;
		grid-column-end: span 6;
		margin-top: var(--gutter);
		transform: translatex(calc(var(--gutter) * -1));
	}
}

	</style>
 <header class="header">
	<h1 class="header-title masthead">Articles that relates to Très Chic</h1>
</header>
	<br />
<main class="main">
	<article class="entry entry-lede">
		<br />
		<img class="entry-img" src="Images\Iulia Cirstea  (2).jpg" alt="A handsome young horse in front of an expansive sky" />
		<div class="entry-content">
			<h1 class="entry-headline primary-headline">Victoria’s Secret Swaps Angels for ‘What Women Want.’ Will They Buy It?</h1>
			<time class="entry-date meta">January 24, 2021</time>
			<span class="entry-byline meta">by Alex Trost</span>
			<p class="entry-summary">The Victoria’s Secret Angels, those avatars of Barbie bodies and playboy reverie, are gone. Their wings, fluttery confections of rhinestones and feathers that could weigh almost 30 pounds, are gathering dust in storage. The “Fantasy Bra,” dangling real diamonds and other gems, is no more.For decades, Victoria’s Secret’s scantily clad supermodels with Jessica Rabbit curves epitomized a certain widely accepted stereotype of femininity. Now, with that kind of imagery out of step with the broader culture and Victoria’s Secret facing increased competition and internal turmoil, the company wants to become, its chief executive said, a leading global “advocate” for female empowerment.</p>
		</div>
	</article>
	
	<article class="entry">
		<img class="entry-img" src="Images\790A0209.jpg" alt="The profile view of three majestic brown horses" />
		<h1 class="entry-headline primary-headline">Famous Black swan theme photoshoot</h1>
		<time class="entry-date meta">January 24, 2021</time>
		<span class="entry-byline meta">by Alex Trost</span>
		<p class="entry-summary">This photoshoot portrays the depiction of the undeniably famous story 'The swan Lake'. The controversy of odette and odile, one being the white perfect swan and the other the black evil swan. This photoshoot is a typical contemporary theme of two model sisters.</p>
	</article>
	<article class="entry">
		<img class="entry-img" src="Images\Iulia Cirstea  (1).jpg" alt="The profile view of three majestic brown horses" />
		<h1 class="entry-headline primary-headline">Iulia Cirstea  For Elle Romania</h1>
		<time class="entry-date meta">January 24, 2021</time>
		<span class="entry-byline meta">by Alex Trost</span>
		<p class="entry-summary"> Model Iulia Cirstea In Lensed By Michael Groeger and is styled like an arty bohemian ‘In Spirit Rock ‘N’ Roll’ by Cristina Craciun. Photographer Michael Groeger captures her indy spirit for Elle Romania May 2015./ Hair by Riad Azar; makeup by Renee. A captivating photoshoot. </p>
		</article>
	<section class="trending">
		<article class="trending-entry">
			<time class="trending-entry-date meta">January 24, 2021</time>
			<h4 class="trending-entry-headline primary-headline">The Met Keeps Releasing Clothing With Pacsun. Why?</h4>
		</article>
		<article class="trending-entry">
			<time class="trending-entry-date meta">January 24, 2021</time>
			<h4 class="trending-entry-headline primary-headline">Everyone Thought He Had Made the Famous Gown. It Was His Wife.</h4>
		</article>
		<article class="trending-entry">
			<time class="trending-entry-date meta">January 24, 2021</time>
			<h4 class="trending-entry-headline primary-headline">Does My Backpack Make Me Look Like a Tourist?</h4>
		</article>
		
	</section>
</main>
</asp:Content>
