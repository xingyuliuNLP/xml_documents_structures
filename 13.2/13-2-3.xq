<corpus>
    {
        for $p in collection('sortieTalismane-3208.xml')//p
        return
            if ($p/item[last()]/a[2][text() = '§'])
            then
                <description>{string-join($p/item/a[2]/text(), " ")}</description>
            else
                ()
    }
</corpus>