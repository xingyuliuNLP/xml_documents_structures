<corpus>
    {
        for $item in collection("3208-2017-v2.xml")//item
        for $desc in $item//description/article
        let $data := string-join($desc/element/data[3], ' ')
        return
            <description>{$data}</description>
    }
</corpus>