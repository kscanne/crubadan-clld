<%inherit file="../crubadan_clld.mako"/>
<%! active_menu_item = "languages" %>


<h3>${_('Writing Systems')}</h3>

${request.map.render()}

${ctx.render()}