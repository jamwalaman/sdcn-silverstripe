<%-- Display the image (File) --%>
<% if $File %>
<div style="background-image: url('$File.URL')" class="sdcn-banner">

    <div class="container">
        <div class="row">
            <div class="col">
                <% if $Title && $ShowTitle %>
                    <h2 class="banner-element__title">$Title</h2>
                <% end_if %>

                $Content

                <%-- Add a CallToActionLink if available --%>
                <% if $CallToActionLink.Page.Link %>
                    <div class="banner-element__call-to-action-container">
                    <% with $CallToActionLink %>
                        <a href="{$Page.Link}" class="banner-element__call-to-action"
                            <% if $TargetBlank %>target="_blank"<% end_if %>
                            <% if $Description %>title="{$Description.ATT}"<% end_if %>>
                            {$Text.XML}
                        </a>
                    <% end_with %>
                    </div>
                <% end_if %>
            </div>
        </div>
    </div>

</div>
<% end_if %>

