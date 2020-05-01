<corpus>
    {
        for $item in collection("3208-2017-v2.xml")//item
        for $elt in $item//article/element
        let $nextElt := $elt/following-sibling::element[1]
            where $elt/data[1][contains(text(), "NOM")] and $nextElt/data[1][contains(text(), "ADJ")]
        return
            <item><NOM_ADJ>{$elt/data[3]/text(), " ", $nextElt/data[3]/text()}</NOM_ADJ></item>
    }
</corpus>