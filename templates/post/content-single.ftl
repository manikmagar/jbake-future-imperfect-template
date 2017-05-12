<article class="post">
   <#include "header.ftl">

    <section id="social-share">
        <ul class="icons">
        	<#include "../commons/share-links.ftl">
        </ul>
    </section>
     
     <#include "../commons/featured.ftl">
     
    <div id="content">
       ${post.body}
    </div>

    <footer>
    	<#include "../commons/footer-tags.ftl">
    	
    </footer>
</article>
