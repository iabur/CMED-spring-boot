<%@ include file="common/header.jspf" %>
<div class="container hero">
    <h1 class="text-center">Data<br /></h1>
    <table class="table mt-5" style="color: white;">
        <thead>
        <tr>
            <th>nlmDisclaimer</th>
            <th>userInput</th>
            <th>interactionTypeGroup</th>
        </tr>
        </thead>
        <tbody class="tbl_1">

        </tbody>
    </table>
    <h1 class="text-center">interactionType<br /></h1>
    <table class="table mt-5" style="color: white;">
        <thead>
        <tr>
            <th>comment</th>
            <th>minConceptItem</th>
            <th>interactionPair</th>
        </tr>
        </thead>
        <tbody class="tbl_2">

        </tbody>
    </table>
</div>
</div>
</div>
</div>
<%@ include file="common/footer.jspf" %>

<script>
    $(document).ready(function () {
        $.ajax({
            url: "https://rxnav.nlm.nih.gov/REST/interaction/interaction.json?rxcui=341248",
            cache: false,
            success: function (data) {
                // Parse the recieved data here.
                var searchResContainer = $(".tbl_1");
                searchResContainer.html("");

                    var tblrow = "<tr>\n" +
                        "            <td>"+data.nlmDisclaimer+"</td>\n" +
                        "            <td>\n" +
                        "                <ul>\n" +
                        "                    <li>sources:</li>\n" +
                        "                    <li>rxcui: "+data.userInput.rxcui+"</li>\n" +
                        "                </ul>\n" +
                        "            </td>\n" +
                        "            <td>\n" +
                        "                <ul>\n" +
                        "                    <li>\n" +
                        "                        sourceDisclaimer: "+data.interactionTypeGroup[0].sourceDisclaimer+"\n" +
                        "                    </li>\n" +
                        "                    <li>sourceName: "+data.interactionTypeGroup[0].sourceName+"</li>\n" +
                        "                    <li>interactionType**</li>\n" +
                        "                </ul>\n" +
                        "            </td>\n" +
                        "        </tr>"
                    searchResContainer.append(tblrow);

                var searchResContainer = $(".tbl_2");
                searchResContainer.html("");
                var tblrow = " <tr>\n" +
                    "            <td>"+data.interactionTypeGroup[0].interactionType[0].comment+"</td>\n" +
                    "            <td>\n" +
                    "                <ul>\n" +
                    "                    <li>rxcui: "+data.interactionTypeGroup[0].interactionType[0].minConceptItem.rxcui+"</li>\n" +
                    "                    <li>name: "+data.interactionTypeGroup[0].interactionType[0].minConceptItem.name+"</li>\n" +
                    "                    <li>tty: "+data.interactionTypeGroup[0].interactionType[0].minConceptItem.tty+"</li>\n" +
                    "                </ul>\n" +
                    "            </td>\n" +
                    "            <td>\n" +
                    "                <ul>\n" +
                    "                    <li>interactionConcept**</li>\n" +
                    "                    <li>severity: "+data.interactionTypeGroup[0].interactionType[0].interactionPair[0].severity+"</li>\n" +
                    "                    <li>description: "+data.interactionTypeGroup[0].interactionType[0].interactionPair[0].description+"</li>\n" +
                    "                </ul>\n" +
                    "            </td>\n" +
                    "        </tr>"
                searchResContainer.append(tblrow);


            }
        });
    });
</script>