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

<%def name="opt_lang(lang)">
    % if (lang != u'None\n'):
        ${lang_links2(lang)}
    % else:
        ${lang}
    % endif
</%def>

<%def name="lang_links(lang_string)">
    <%
        out_string = '<span>'
        for lang in lang_string.split():
	    link = ' ' + '<a href="' + lang + '">' + lang + '</a>'
	    out_string += link
	out_string += ' </span>'
    %>
    ${out_string}
</%def>

<%def name="lang_links2(lang_string)">
    % for lang in lang_string.split()[:-1]:
        <a href="${lang}">${lang}</a>,
    % endfor
        <a href="${lang_string.split()[-1]}">${lang_string.split()[-1]}</a>
</%def>

<style type="text/css">
table.metadata {
    max-width: 50em;
}
table.metadata tr {
    border-top: 1px solid #DCC
}
table.metadata td {
    padding-left: 1em;
    padding-top: 0.2em;
    padding-bottom: 0.2em;
}
</style>

<h2>

${ctx.jsondata[u'name_english']}
( ${ctx.jsondata[u'lang']}):

<a href="${dist_file_path()}">
${ctx.id}.zip
( ${ctx.jsondata[u'm_zip_size']})
</a>

</h2>

<h4>Corpus Statistics</h3>

<table class="metadata">
    <tr><td> Documents Crawled          </td><td> ${ctx.jsondata[u'm_documents_crawled']} </td></tr>
    <tr><td> Words                      </td><td> ${ctx.jsondata[u'm_words']}             </td></tr>
</table>

<h4>Writing System Attributes</h3>

<table class="metadata">
    <tr><td> BCP-47 Code:               </td><td> ${ctx.jsondata[u'lang']}                </td></tr>
    <tr><td> Language Name (English):   </td><td> ${ctx.jsondata[u'name_english']}        </td></tr>
    <tr><td> Language Name (Autonym):   </td><td> ${ctx.jsondata[u'name_native']}         </td></tr>
    <tr><td> ISO 639-3 Code:            </td><td> ${ctx.jsondata[u'ISO_639-3']}           </td></tr>
    <tr><td> Country:                   </td><td> ${ctx.jsondata[u'country']}             </td></tr>
    <tr><td> Script:                    </td><td> ${ctx.jsondata[u'script']}              </td></tr>
    <tr><td> Parent Writing System:     </td><td> ${opt_lang(ctx.jsondata[u'parent'])}    </td></tr>
    <tr><td> Child Writing Systems:     </td><td> ${opt_lang(ctx.jsondata[u'children'])}  </td></tr>
    <tr><td> Linguistic Classification: </td><td> ${ctx.jsondata[u'classification']}      </td></tr>
</table>

<h4>Linguistic Resources</h3>

${opt_link( u'm_sample_link'     , u'Wikipedia Article'  )}
${opt_link( u'm_ethnologue_link' , u'Ethnologue Entry'   )}
${opt_link( u'm_glottolog_link'  , u'Glottolog Entry'    )}
${opt_link( u'm_olac_link'       , u'OLAC Entry'         )}
${opt_link( u'm_phoible_link'    , u'Phoible Entry'      )}
${opt_link( u'm_unesco_link'     , u'UNESCO Entry'       )}


<h4>Primary Texts Online</h3>

${opt_link( u'm_wikipedia_link' , ctx.jsondata[u'name_english'] + u' Wikipedia'                  )}
${opt_link( u'm_tweets_link'    , ctx.jsondata[u'name_english'] + u' Tweets (Indigenous Tweets)' )}
${opt_link( u'm_blogs_link'     , ctx.jsondata[u'name_english'] + u' Blogs (Indigenous Blogs)'   )}
${opt_link( u'm_bible_link'     , u'Bible Translations'                                          )}
${opt_link( u'm_udhr_link'      , u'Universal Declaration of Human Rights'                       )}
${opt_link( u'm_jw_link'        , u'JW.org'                                                      )}

