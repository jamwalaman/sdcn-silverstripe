<% if $Banner %>
    <div style="background-image: url('$Banner.URL')" class="sdcn-banner">
        <div class="container">
            <div class="row">
                <div class="col">
                    <h1>
                        <% if $BannerTitle %>
                            $BannerTitle
                        <% else %>
                            $Title
                        <% end_if %>
                    </h1>
                </div>
            </div>
        </div>
    </div>
<% end_if %>

$ElementalArea