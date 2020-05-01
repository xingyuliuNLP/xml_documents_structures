<corpus>
    {
        for $item at $i in collection("3208-2017-v2.xml")//item
        for $elt in $item//article/element
        let $nextElt := $elt/following-sibling::element[1]
        let $nextElt2 := $elt/following-sibling::element[2]
            where $elt/data[1][contains(text(), "NOM")] and $nextElt/data[1][contains(text(), "PRP")] and $nextElt2/data[1][contains(text(), "NOM")]
        return
            <item><NOM_PRP_NOM>{$elt/data[3]/text(), " ", $nextElt/data[3]/text(), " ", $nextElt2/data[3]/text()}</NOM_PRP_NOM></item>
    }
</corpus>