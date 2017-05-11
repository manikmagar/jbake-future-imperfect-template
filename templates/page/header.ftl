<header>
    <div class="title">
        <h1><a href="/${post.noExtensionUri}">${post.title}</a></h1>
       	<#if (post.description != null)??>
            <p>${post.description}</p>
        </#if>
    </div>
    <div class="meta">
         <time class="published"
            datetime='${post.date?string("MMM dd, yyyy")}'>
            ${post.date?string("MMM dd, yyyy")}</time>
       <!--  {{ if .Site.Params.includeReadingTime }}
            <p>{{ .ReadingTime }} minute read</p>
        {{ end }} -->
    </div>
</header>
