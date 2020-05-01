(:Construire une requête pour extraire les items portant une relation de dépendance syntaxique de type SUB:)
<dep>
    {
        for $item in collection("baseTrameurFromRhapsodie.xml")//baselexicometrique/trame/items/item
            where $item/a[7][contains(text(), 'SUB')]
        return
            <item>{$item/f/text(), " ", $item/a[7]/text()}</item>
    }
</dep>