<%inherit file="../crubadan_clld.mako"/>
<%namespace name="util" file="../util.mako"/>
<%! active_menu_item = "writingsystems" %>


<h2>${ctx.eng_name}</h2>

${util.dl_table(('Country', ctx.country), ('Script', ctx.script))}