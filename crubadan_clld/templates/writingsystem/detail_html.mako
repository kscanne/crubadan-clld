<%inherit file="../crubadan_clld.mako"/>
<%namespace name="util" file="../util.mako"/>
<%! active_menu_item = "writingsystems" %>


<h2>${ctx.eng_name} (${ctx.id}): <a href="${request.static_url('/data/crubadan-clld/files/' + ctx.id + '.zip')}">${ctx.id}.zip</a></h2>

<h4>Corpus Statistics</h3>

${util.dl_table(('Documents Crawled', '???'),
                ('Words', '???'))}

<h4>Writing System Attributes</h3>

${util.dl_table(('BCP-47 Code', ctx.bcp47),
                ('Language Name (English)', ctx.eng_name),
		('Language Name (Autonym)', ctx.native_name),
		('ISO 639-3 Code', ctx.iso6393),
                ('Country', ctx.country),
                ('Script', ctx.script),
		('Parent Writing System', ctx.parent_ws),
		('Child Writing Systems', ctx.child_ws),
		('Linguistic Classification', ctx.ling_classification),
		('Files', ctx.files[ctx.id].relpath()),)}

<h4>Linguistic Resources</h3>
<p>Ethnologue</p>
<p>Glottolog</p>
<p>OLAC</p>

<h4>Primary Texts Online</h3>
<p>???</p>