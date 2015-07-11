<%inherit file="crubadan_clld.mako"/>
<%! active_menu_item = "apps" %>

<div style="max-width: 50em;">

<h3>Applications</h3>

<h4>Grammar Checking</h4>
<p>
The 100 million+ words of Irish downloaded by the crawler have been
instrumental in the development of
my grammar checker <a href="http://borel.slu.edu/gramadoir/index.html">An Gramadóir</a>,
and many other NLP applications for Irish.
Other language groups have use the Crúbadán data for developing grammar checkers, including for Afrikaans (Petri Jooste), Breton (Thierry Vignaud), Cornish (Edi Werner), Occitan (Bruno Gallart), Walon (Pablo Saratxaga)
</p>

<h4>Diacritic Restoration</h4>
<p>
Using Unicode it is possible to create electronic documents in most
languages with all of the proper diacritical marks and extended characters.
Nevertheless, for various reasons speakers of many languages do not do
this when writing
emails or blogs or producing other documents for consumption on the web.   In Lingala,
for example, there are tone markings as well as two extended vowels,
the "open e" (ɛ), and the "open o" (ɔ).   On the web, tone marks are generally omitted and these vowels are written as "e" and "o" respectively, so
"abɔkɔ́lɛ́kɛ́" becomes "abokoleke".  This can cause ambiguities for people reading
Lingala texts, and also limits the usefulness of web
texts for statistical purposes.  To improve this situation, I wrote a script
called "<a href="https://sourceforge.net/project/showfiles.php?group_id=256316">charlifter</a>" that performs statistical diacritic
restoration on web texts.   This greatly enhances the usefulness of the
Crúbadán corpora.  The charlifter is also an <i>application</i> of the web crawler,
in that the statistical language models it uses are created
from the (rare) texts found by the crawler that use diacritical marks
and extended characters correctly. My student <a href="http://mschade.me/">Michael Schade</a> has written a Firefox add-on called <a href="http://accentuate.us/">accentuate.us</a> that allows one to use this technology anywhere on the web: email, blogs, chats, etc.
</p>

<h4>Language Recognition</h4>
<p>
The n-gram statistics gathered from the corpora for each language
provide a powerful and effective language recognition algorithm.   
Of course particular care must be given to language pairs with very
similar n-gram profiles; for more on this, see my blog post
<a href="http://indigenoustweets.blogspot.com/2011/12/1000-languages-on-web.html"><i>1000 Languages on the Web</i></a>.  A corpus of Crúbadán 3-grams is now
available (under the GPLv3) as part of the Natural Language Toolkit (NLTK);
see their <a href="http://www.nltk.org/nltk_data/">corpus download page</a>.
</p>

<h4>Hearing Testing</h4>
<p>
I've provided Mongolian corpus data to Drs. Richard Harris and Shawn Nissen at Brigham Young University for their project <i>Development of digitally recorded Mongolian Speech Audiometry Materials</i>, the aim of which is to produce low-cost hearing tests for Mongolian speakers.  I provided additional material for work-in-progress on Samoan, Tagalog, and several South African languages.  See the Master's Theses based on this work <a href="http://contentdm.lib.byu.edu/ETD/image/etd2877.pdf">here</a> and <a href="http://contentdm.lib.byu.edu/ETD/image/etd3139.pdf">here</a>.
</p>

<h4>Accessibility</h4>
<p>
<a href="http://www.inference.phy.cam.ac.uk/dasher/">Dasher</a> is a
free software package developed at the University of Cambridge that
allows efficient text-entry without a keyboard.  
It uses a language model trained on text corpora to help it 
make predictions; the Dasher developers are
training 129 new language models using the <i>An Crúbadán</i> corpora.
</p>

<h4>Lexicography</h4>
<div class="divp">

<p>
The Crúbadán corpora have proved useful to a number of lexicographical
projects:
</p>

<ul>
<li><a href="http://www.geiriadur.ac.uk/">Geiriadur Prifysgol Cymru</a>, the University of Wales Dictionary of the Welsh Language.</li>
<li><a href="http://www.focloir.ie/">focloir.ie</a>, the new English-Irish dictionary project</li>
<li><a href="http://www.gogan.ie/">L. S. Gogan's dictionary</a></li>
<li><a href="http://www.kasahorow.org/">kasahorow.org</a></li>
<li><a href="http://www.smo.uhi.ac.uk/gaeilge/focloiri/daoine/">Is Iomaí Duine ag Dia</a>, Dennis King et al</li>
<li><a href="http://leabharbreac.com/leabhair.html?pID=54">Foclóir Gaeilge-Fraincis</a> Loig Cheveau</li>
<li><a href="http://www.sketchengine.co.uk/">SketchEngine</a></li>
</ul>

</div>

<h4>Spell Checking</h4>

<h5>New word lists</h5>
<div class="divp">
<p>
I've written a series of 
statistical filters that can be applied to the web corpora
to generate word lists that speed the process of 
developing a new spell checker.
These techniques have been applied to create the following 
spell checking packages:
</p>

<ul>
<li><i><a href="http://extensions.services.openoffice.org/project/AssameseDict">hunspell-as</a></i>, (Assamese).  With Amitakhya Phukan.</li>
<li><i><a href="http://ftp.gnu.org/gnu/aspell/dict/az/">aspell-az</a></i>,
<i><a href="http://wiki.services.openoffice.org/wiki/Dictionaries">hunspell-az</a></i> (Azerbaijani).  With Metin Amiroff.</li>
<li><i><a href="https://addons.mozilla.org/en-US/firefox/addon/bosnian-spell-checker/">Mozilla</a></i> (Bosnian).  With Mirsad Čirkić, based on earlier work of Ninoslav Jurković, Samir Ribić, and Vedran Ljubović.</li>
<li><i><a href="http://ftp.gnu.org/gnu/aspell/dict/csb/">aspell-csb</a></i>,
<i><a href="http://wiki.services.openoffice.org/wiki/Dictionaries">hunspell-csb</a></i> (Kashubian).  With Roman Drzeżdżon and Piotr Formella.</li>
<li><i><a href="https://addons.mozilla.org/en-us/firefox/addon/diola-kasa-spell-checker/">Mozilla</a></i> (Diola-Kasa).  With Outi Sane.</li>
<li><i><a href="https://addons.mozilla.org/en-us/firefox/addon/diola-fogny-spell-checker/">Mozilla</a></i> (Diola-Fogny).  With Outi Sane.</li>
<li><i><a href="http://ftp.gnu.org/gnu/aspell/dict/fy/">aspell-fy</a></i>,
<i><a href="http://wiki.services.openoffice.org/wiki/Dictionaries">hunspell-fy</a></i> (Frisian).  With Eeltje de Vries.</li>
<li><i><a href="http://ftp.gnu.org/gnu/aspell/dict/ga/">aspell-ga</a></i>,
<i><a href="http://borel.slu.edu/ispell/sios.html">ispell-ga</a></i>,
<i><a href="http://extensions.services.openoffice.org/en/project/focloiri-gaeilge">hunspell-ga</a></i>,
<i><a href="https://addons.mozilla.org/en-US/firefox/addon/3090/">Mozilla</a></i>
(Irish).</li>
<li><i><a href="https://addons.mozilla.org/ga-IE/firefox/addon/260204/">Mozilla</a></i>,
<i><a href="http://extensions.services.openoffice.org/en/project/faclair-afb">hunspell-gd</a></i>
(Scottish Gaelic). With Michael Bauer.</li>
<li><i><a href="http://ftp.gnu.org/gnu/aspell/dict/gv/">aspell-gv</a></i>
(Manx Gaelic).  Using earlier work of Alastair McKinstry.</li>
<li><i><a href="https://addons.mozilla.org/en-US/firefox/addon/204309/">Mozilla</a></i>
(Hawaiian).</li>
<li><i><a href="http://ftp.gnu.org/gnu/aspell/dict/hil/">aspell-hil</a></i>,
<i><a href="https://addons.mozilla.org/en-US/firefox/addon/204310/">Mozilla</a></i>
(Hiligaynon).  With Francis Dimzon.</li>
<li><i><a href="http://kok.logipam.org/">hunspell-ht</a></i>,
<i><a href="https://addons.mozilla.org/en-US/firefox/addon/48577/">Mozilla</a></i>
(Haitian Creole).  With Jean Came Poulard and <a href="http://logipam.org/">LogiPam</a>.</li>
<li><i><a href="http://ftp.gnu.org/gnu/aspell/dict/ku/">aspell-ku</a></i>,
<i><a href="https://sourceforge.net/project/showfiles.php?group_id=129915&package_id=146857">ispell-ku</a></i>,
<i><a href="http://wiki.services.openoffice.org/wiki/Dictionaries">hunspell-ku</a></i>,
<i><a href="https://addons.mozilla.org/en-US/firefox/addon/8323/">Mozilla</a></i>
(Kurdish).  With Erdal Ronahi and Rêzan Tovjîn.</li>
<li><i><a href="ftp://ftp.gnu.org/gnu/aspell/dict/ky/">aspell-ky</a></i> (Kirghiz).  With Ilyas Bakirov.</li>
<li><i><a href="https://sourceforge.net/project/showfiles.php?group_id=256316&package_id=317051">hunspell-ln</a></i>,
<i><a href="https://addons.mozilla.org/en-US/firefox/addon/204312/">Mozilla</a></i>
(Lingala).  With Denis Jacquerye.</li>
<li><i><a href="http://ftp.gnu.org/gnu/aspell/dict/mg/">aspell-mg</a></i>,
<i><a href="http://wiki.services.openoffice.org/wiki/Dictionaries">hunspell-mg</a></i>
(Malagasy).  With Rado Ramarotafika.</li>
<li><i><a href="https://addons.mozilla.org/en-US/firefox/addon/marshallese-spell-checker/">Mozilla</a></i> (Marshallese). With Marco Mora.</li>
<li><i><a href="http://ftp.gnu.org/gnu/aspell/dict/mn/">aspell-mn</a></i>
(Mongolian).  With Sanlig Badral.  See the
<a href="http://openmn.sourceforge.net/modules.php?op=modload&name=News&file=article&sid=216">announcement (in Mongolian)</a>.  I'm "Профессор Доктор Кэвин Сканнелл".</li>
<li><i><a href="http://ftp.gnu.org/gnu/aspell/dict/ny/">aspell-ny</a></i>,
<i><a href="http://wiki.services.openoffice.org/wiki/Dictionaries">hunspell-ny</a></i>
(Chichewa).  With Soyapi Mumba and Edmond Kachale.</li>
<li><i><a href="https://addons.mozilla.org/en-US/firefox/addon/oromo-hunspell-spellcheckin/">Mozilla</a></i> (Oromo). With Belayneh Melka and Dawit Boka.</li>
<li><i><a href="http://ftp.gnu.org/gnu/aspell/dict/rw/">aspell-rw</a></i>,
<i><a href="http://wiki.services.openoffice.org/wiki/Dictionaries">hunspell-rw</a></i>
(Kinyarwanda).  With Steve Murphy and Philibert Ndandali.</li>
<li><i><a href="https://addons.mozilla.org/en-US/firefox/addon/11940">Mozilla</a></i>
(Songhay). With Abdoul Cisse and Mohomodou Houssouba.</li>
<li><i><a href="http://www.opensourcesomalia.org/index.php?page=hingaad-saxe">hunspell-so</a></i> (Somali). With Mohamed I. Mursal. Packaged as a Mozilla add-on.  See the <a href="http://www.garoweonline.com/artman2/publish/Features_34/Somalia_Somali_born_engineer_develops_spell_checker.shtml">announcement (English)</a>.</li>
<li><i><a href="http://ftp.gnu.org/gnu/aspell/dict/tet/">aspell-tet</a></i>,
<i><a href="http://wiki.services.openoffice.org/wiki/Dictionaries">hunspell-tet</a></i>
(Tetum).  With Peter Gossner.</li>
<li><i><a href="http://ftp.gnu.org/gnu/aspell/dict/tk/">aspell-tk</a></i>,
<i><a href="https://addons.mozilla.org/en-US/firefox/addon/204314">Mozilla</a></i>
(Turkmen).  With Jumamurat Bayjan.</li>
<li><i><a href="http://ftp.gnu.org/gnu/aspell/dict/tl/">aspell-tl</a></i>,
<i><a href="http://wiki.services.openoffice.org/wiki/Dictionaries">hunspell-tl</a></i>
(Tagalog).  With Ramil Sagum.</li>
<li><i><a href="http://ftp.gnu.org/gnu/aspell/dict/tn/">aspell-tn</a></i>,
<i><a href="http://wiki.services.openoffice.org/wiki/Dictionaries">hunspell-tn</a></i>
(Setswana).  With Thapelo Otlogetswe.</li>
<li><i><a href="http://extensions.services.openoffice.org/en/project/tok-pisin-spell-checker">hunspell-tpi</a></i>,
<i><a href="https://addons.mozilla.org/en-us/firefox/addon/tok-pisin-spell-checker/">Mozilla</a></i>
(Tok Pisin). With Helge Søgaard.</li>
<li><i><a href="http://translate.org.za/download/spellchecker/xhosa/aspell-xh-0.50-20060123.tar.bz2">aspell-xh</a></i>,
<i><a href="http://wiki.services.openoffice.org/wiki/Dictionaries">hunspell-xh</a></i>
(Xhosa).  Crúbadán word list is the basis for the <a href="http://translate.org.za/">translate.org.za</a> spell checker.</li>
<li><i><a href="http://translate.org.za/download/spellchecker/dev/">hunspell-zu</a></i> (Zulu, experimental). Crúbadán word list is the basis for the <a href="http://translate.org.za/">translate.org.za</a> spell checker, which includes a rich affix file by Friedel Wolff.</li>
</ul>

</div>

<h5>Abandoned projects or works in progress</h5>
<div class="divp">
<p>
  Please contact me if you speak one of these languages and would be willing to help.
</p>

<ul>
<li>Balochi, with Mostafa Daneshvar.</li>
<li>Chechen, with Sarah Slye, Steve Massey, et al</li>
<li>Chhattisgarhi, with Ravishankar Shrivastava.</li>
<li>Cornish, with Edi Werner and Paul Bowden.</li>
<li>Dzongkha, with Tshering Cigay Dorji.</li>
<li>Guaraní, with Iván Prieto Corvalán.</li>
<li>Hausa, with Mustapha Abubakar.</li>
<li>Igbo, with Chinedu Uchechukwu and Ogechi Nnadi.</li>
<li>Itzgründisch, with Sabine Emmy Eller.</li>
<li>Kapampangan, with José Navarro.</li>
<li>Kikongo, with Anderson Sunda-Meya.</li>
<li>Limburgish, with Kenneth Rohde Christiansen.</li>
<li>Luganda, with San Emmanuel James and Jackson Ssekiryango.</li>
<li>Nawat, with <a href="http://alanrking.info/">Alan King</a>.</li>
<li>Samoan, with <a href="http://www.bickersc.com/">Chris Bickers</a>.</li>
<li>Sindhi, with Abdul Rahim Nizamani.</li>
<li>Sundanese, with Mang Jamal.</li>
<li>Tahitian, with Christin Livine.</li>
<li>Tigrinya and Tigré, with Merhawie Woldezion.</li>
<li>Tongan, with Brian Romanowski.</li>
<li>Yoruba, with Tope Faro.</li>
</ul>

</div>

<h5>Abandoned projects, word lists now available elsewhere</h5>
<ul>
<li>Asturian, with Ricardo Mones Lastra (update: OpenOffice.org extension available <a href="http://extensions.services.openoffice.org/en/project/asturianu">here</a>).</li>
<li>Basque, with Alberto Fernández (update: hunspell package now available from <a href="http://www.euskara.euskadi.net/r59-738/es/contenidos/informacion/euskarazko_softwarea/es_9568/lista.html">euskadi.net</a>).</li>
<li>Bislama, with Eric Brandell (update: GPL word lists available from <a href="http://www.swtech.com.au/bislama/">swtech.com.au</a>).</li>
<li>Friulian, with Andrea Tami (update: extensive word list now available from <a href="http://digilander.libero.it/paganf/coretors/dizionaris.html">digilander.libero.it</a>).</li>
<li>Papiamentu, with Peter Damiana (update: Firefox addon available <a href="https://addons.mozilla.org/En-us/firefox/addon/dikshonario-papiamentu/">here</a>).</li>
</ul>

<h4>Other Projects</h4>

<div class="divp">
  
<p>
I've provided data to hundreds of researchers working on computational or 
pure linguistics research projects for many languages. 
I used to track them all here but that's become more trouble than it's
worth.   Here is a list of some of the applications in any case:
</p>

<ul>
<li>Dialect discrimination</li>
<li>Computational Morphology</li>
<li>Syntactic analysis (computational and theoretical)</li>
<li>Lemmatization and IR</li>
<li>Language ID</li>
<li>Optical Character Recognition</li>
<li>Sociolinguistics and social media</li>
<li>Language learning</li>
<li>Word sense disambiguation</li>
<li>Predictive text and autocorrect</li>
<li>Comparative phonology</li>
<li>Lexicography</li>
<li>Machine translation</li>
<li>Selectional preferences</li>
<li>Crossword generation</li>
<li>POS tagging</li>
<li>Speech recognition</li>
<li>Speech synthesis</li>
<li>Psycholinguistics</li>
<li>Semantic networks</li>
<li>Diacritic restoration</li>
<li>Spelling and grammar checking</li>
</ul>

</div>

<p>
Please contact me (kscanne at gmail dot com)
if you are interested in applying
these techniques to a new language.
</p>

</div>