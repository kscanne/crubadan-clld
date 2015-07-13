<%inherit file="app.mako"/>

##
## define app-level blocks:
##
<%block name="header">
<div id="header" style="padding: 4px; padding-left: 8px;">
    <h1>
        An Crúbadán
	- Corpus Building for Minority Languages
    </h1>
</div>    
</%block>

${next.body()}
