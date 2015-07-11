<%inherit file="../crubadan_clld.mako"/>
<%namespace name="util" file="../util.mako"/>
<%! active_menu_item = "writingsystems" %>

<%def name="dist_file_path()">
    ${request.static_url('/data/crubadan-clld/files/' + ctx.id + '.zip')}
</%def>

<%def name="opt_data(field)">
    % if (ctx.jsondata[field] != u'NOLINK\n'):
        ${ctx.jsondata[field]}
    % endif
</%def>

<%def name="opt_link(link, link_text)">
    % if (ctx.jsondata[link] != u'NOLINK\n'):
        <p>
        <a href="${ctx.jsondata[link]}">
	    ${link_text}
	</a>
	</p>
    % endif
</%def>

<h2>

${ctx.jsondata[u'name_english']}
( ${ctx.jsondata[u'lang']}):

<a href="${dist_file_path()}">
${ctx.id}.zip
( ${ctx.jsondata[u'm_zip_size']})
</a>

</h2>

<h4>Corpus Statistics</h3>

${util.dl_table( ( 'Documents Crawled' , ctx.jsondata[u'm_documents_crawled'] ) ,
                 ( 'Words'             , ctx.jsondata[u'm_words']             ) )}

<h4>Writing System Attributes</h3>

${util.dl_table(('BCP-47 Code'               , ctx.jsondata[u'lang']),
                ('Language Name (English)'   , ctx.jsondata[u'name_english']),
		('Language Name (Autonym)'   , ctx.jsondata[u'name_native']),
		('ISO 639-3 Code'            , ctx.jsondata[u'ISO_639-3']),
                ('Country'                   , ctx.jsondata[u'country']),
                ('Script'                    , ctx.jsondata[u'script']),
		('Parent Writing System'     , ctx.jsondata[u'parent']),
		('Child Writing Systems'     , ctx.jsondata[u'children']),
		('Linguistic Classification' , ctx.jsondata[u'classification']),
	       )}


<h4>Linguistic Resources</h3>

${opt_link( u'm_sample_link'      , u'Wikipedia Article'  )}
${opt_link( u'm_ethnologue_link'  , u'Ethnologue Entry'   )}
${opt_link( u'm_glottolog_link'   , u'Glottolog Entry'    )}
${opt_link( u'm_olac_link'        , u'OLAC Entry'         )}
${opt_link( u'm_phoible_link'     , u'Phoible Entry'      )}
${opt_link( u'm_unesco_link'      , u'UNESCO Entry'       )}


<h4>Primary Texts Online</h3>

${opt_link( u'm_wikipedia_link' , ctx.jsondata[u'name_english'] + u' Wikipedia'                  )}
${opt_link( u'm_tweets_link'    , ctx.jsondata[u'name_english'] + u' Tweets (Indigenous Tweets)' )}
${opt_link( u'm_blogs_link'     , ctx.jsondata[u'name_english'] + u' Blogs (Indigenous Blogs)'   )}
${opt_link( u'm_bible_link'     , u'Bible Translations'                                          )}
${opt_link( u'm_udhr_link'      , u'Universal Declaration of Human Rights'                       )}
${opt_link( u'm_jw_link'        , u'JW.org'                                                      )}

