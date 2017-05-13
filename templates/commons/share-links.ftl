<!-- Social Share Button HTML -->

<!-- Twitter -->
<li><a href="//twitter.com/share?url=${config.site_host}/${post.noExtensionUri!post.uri}&text=${post.title}&via=${config.sidebar_social_twitter}" target="_blank" class="share-btn twitter">
    <i class="fa fa-twitter"></i>
    <p>Twitter</p>
</a></li>

<!-- Google Plus -->
<li><a href="//plus.google.com/share?url=${config.site_host}/${post.noExtensionUri!post.uri}" target="_blank" class="share-btn google-plus">
    <i class="fa fa-google-plus"></i>
    <p>Google+</p>
</a></li>

<!-- Facebook -->
<li><a href="//www.facebook.com/sharer/sharer.php?u=${config.site_host}/${post.noExtensionUri!post.uri}" target="_blank" class="share-btn facebook">
    <i class="fa fa-facebook"></i>
    <p>Facebook</p>
</a></li>

<!-- Reddit (url, title) -->
<li><a href="//reddit.com/submit?url=${config.site_host}/${post.noExtensionUri!post.uri}&title=${post.title}" target="_blank" class="share-btn reddit">
    <i class="fa fa-reddit-alien"></i>
    <p>Reddit</p>
</a></li>

<!-- LinkedIn -->
<li><a href="//www.linkedin.com/shareArticle?url=${config.site_host}/${post.noExtensionUri!post.uri}&title=${post.title}" target="_blank" class="share-btn linkedin">
    <i class="fa fa-linkedin"></i>
    <p>LinkedIn</p>
</a></li>

<!-- StumbleUpon (url, title) -->
<li><a href="//www.stumbleupon.com/submit?url=${config.site_host}/${post.noExtensionUri!post.uri}&title=${post.title}" target="_blank" class="share-btn stumbleupon">
    <i class="fa fa-stumbleupon"></i>
    <p>StumbleUpon</p>
</a></li>

<!-- Email -->
<li><a href="mailto:?subject=Check out this post by ${post.author!config.site_author!config.site_author}&body=${config.site_host}/${post.noExtensionUri!post.uri}" target="_blank" class="share-btn email">
    <i class="fa fa-envelope"></i>
    <p>Email</p>
</a></li>
