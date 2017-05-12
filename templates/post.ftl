<#include "header.ftl">
	
	<#include "menu.ftl">
	<div id="main">
		<#assign post = content />
		<#assign titleH1 = true /> 
		<#if (post??) >
			<#include "post/content-single.ftl">
		</#if>
    </div>
    
    
	<#include "commons/disqus.ftl">

	<#include "commons/sidebar.ftl">
<#include "footer.ftl">
