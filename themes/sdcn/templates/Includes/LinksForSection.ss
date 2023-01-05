<% if $isSection %>
    <% if $Children %>

        <div class="container">
            <div class="row">
                <div class="col">
                
                    <p>In this section</p>
                    <ul>
                    <% loop $Children %>
                    <li><a href="$Link">$MenuTitle</a></li>
                    <% end_loop %>
                    </ul>
                    
                </div>
            </div>
        </div>

    <% end_if %>
<% end_if %>
