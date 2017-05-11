<article class="post">
   <#include "header.ftl">
   
   <#include "../commons/featured.ftl">
     
    <div id="content">
       ${post.body}
    </div>

    <footer>
    	<#include "../commons/footer-tags.ftl">
    	
    </footer>
</article>

<!--
{{ if ne .Site.DisqusShortname "" }}
    {{ if not (in (printf "%#v" .Site.BaseURL) "localhost") }}
        <article class="post">
            {{ template "_internal/disqus.html" . }}
        </article>
    {{ end }}
{{ end }}
-->