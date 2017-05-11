<article class="post">
   <#include "header.ftl">

    <section id="social-share">
        <ul class="icons">
        	<#include "../commons/share-links.ftl">
        </ul>
    </section>
     
     <#include "featured.ftl">
     
    <div id="content">
       ${post.body}
    </div>

    <footer>
    	<#include "footer-tags.ftl">
    	
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