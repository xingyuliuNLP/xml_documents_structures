<corpus>
    {
        let $corpus := collection("sortieTalismane-3208.xml")
        let $titre := count($corpus//p/item[last()]/a[2][text() != '§'])
        let $description := count($corpus//p/item[last()]/a[2][text() = '§'])
        return
            ("<nbtitres>", $titre, "</nbtitres>", "  ", "<nbdescriptions>", $description, "</nbdescriptions>")
    }
</corpus>