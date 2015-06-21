<%inherit file="../crubadan_clld.mako"/>

<%def name="sidebar()">
    <div class="well">

        ##
        ## Replace the header and twitter widget link here with yours:
	##

 ##      <h3>Put whatever title seems appropriate here...</h3>

		<a class="twitter-timeline"  href="https://twitter.com/IndigenousTweet" data-widget-id="416948003417505792">News from @IndigenousTweet</a>
		<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>
          

        ##
	##
	##

    </div>
</%def>

<h3>Project Overview</h3>

<p> Statistical techniques are a key part of most modern natural
language processing systems.  Unfortunately, such techniques require
the existence of large bodies of text, and in the past corpus
development has proved to be quite expensive.  As a result,
substantial corpora exist primarily for languages like English,
French, German, etc. where there is a market-driven need for NLP
tools.  </p>

<p> The idea behind this project is to exploit the vast quantities of
text freely available on the web as a way of bringing the benefits of
statistical NLP to languages with small numbers of speakers and/or
limited computational resources.  Initially it was deployed for the
six Celtic languages, but over the last ten years I've added support
for more than 2000 languages from all parts of the world.  You can
information about all of these languages and downloadable datasets on
the <a href="writing_systems.html">Downloads Page</a>.  There is also
information on various tools that have been developed using these
corpora on the <a href="applications.html">Applications Page</a>.
</p>

<p> I gave a presentation on this work at the <a
href="http://cental.fltr.ucl.ac.be/wac3/">WAC3 conference</a> in
Louvain-la-Neuve, Belgium in September of 2007.  Here is the
conference paper, which is the one we'd ask you to cite if you make
use of this work: <a href="http://borel.slu.edu/pub/wac3.pdf">The
Crúbadán Project: Corpus building for under-resourced languages</a>.
I am grateful to the organizers Cédrick Fairon, Adam Kilgarriff, and
Gilles-Maurice de Schryver for the invitation and to the Université
Catholique de Louvain for financial support that made the trip
possible.  You can read the slides from my <a
href="http://borel.slu.edu/pub/wac3slides.pdf">main talk</a> and also
some remarks I made during the WAC <a
href="http://borel.slu.edu/pub/wacpanel.pdf">panel discussion</a>.
</p>

<p> The word <i lang="ga">crúbadán</i> means literally "crawler" in
Irish, but with the additional (appropriate in this context)
connotation of unwanted or clumsy "pawing", from the root <i
lang="ga">crúb</i> ("paw").  Several people have asked me how it is
pronounced - you can now <a
href="http://borel.slu.edu/crubadan/crubadan.mp3">listen to the
word</a> as it's spoken by the wonderful Irish speech synthesizer <a
href="http://www.abair.tcd.ie/index.php">abair.ie</a>.  </p>
