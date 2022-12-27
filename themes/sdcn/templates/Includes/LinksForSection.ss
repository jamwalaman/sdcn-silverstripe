<% if $isSection %>
    <p>In this section</p>
    <% if $Children %>
        <ul>
            <% loop $Children %>
            <li><a href="$Link">$MenuTitle</a></li>
            <% end_loop %>
        </ul>
    <% end_if %>
<% end_if %>
