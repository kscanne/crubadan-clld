<%inherit file="app.mako"/>

##
## define app-level blocks:
##
<%block name="header">
<div id="header" style="background-color: #1F3D99; padding: 4px; padding-left: 8px;">
    <h1>
        <span style="color: #FFFF4D; font-style: italic;">
            An Crúbadán
	</span>
	<span style="color: white">
	    - Corpus Building for Minority Languages
	</span>
    </h1>
</div>    
</%block>

${next.body()}
