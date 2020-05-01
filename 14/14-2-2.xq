(:Construire une requête pour extraire les items en relation de dépendance syntaxique de type SUB (on affichera les formes ou les lemmes connectés par cette relation):)

<itemSub>
    {
        for $item in doc("baseTrameurFromRhapsodie.xml")//baselexicometrique/trame/items/item
        let $idGov := substring-before(substring-after($item/a[7]/text(), 'SUB('), ')')
        let $idDep := @pos/text()
            where $item/a[7][contains(text(), 'SUB')]
        return
            <item>{concat(doc("baseTrameurFromRhapsodie.xml")/baselexicometrique/trame/items/item[@pos = $idGov]/f/text(), "-", $item/f/text())}</item>
    }
</itemSub>