<corpus>
    {
        for $item in collection("3208-2017-v2.xml")//item
        for $art in $item/titre/article
        let $titre := string-join($art/element/data[3], ' ')
        for $desc in $item//description/article
        let $desc := string-join($desc/element/data[3], ' ')
        return
            <item>
                <titre>{$titre}</titre>
                <description>{$desc}</description>
            </item>
    }
</corpus>