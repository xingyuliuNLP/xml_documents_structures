<corpus>
    {
        for $item in collection("3208-2017-v2.xml")//item
        for $art in $item/titre/article
        let $data := string-join($art/element/data[3], ' ')
        return
            <titre>{$data}</titre>
    }
</corpus>