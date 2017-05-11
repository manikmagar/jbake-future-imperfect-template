<#include "header.ftl">

	<#include "menu.ftl">

    <div id="main">
        <h1>Tag: ${tag}</h1>
        
        <#list tag_posts as post>
        	<#include "post/content-list.ftl">
        
        </#list>
    </div>

	<#include "commons/sidebar.ftl">
<#include "footer.ftl">