<corpus>
    {
        for $p in collection("sortieTalismane-3208.xml")//p
        for $item in $p//item
        for $dep in $item/a[8][contains(text(), "sub")]
        let $idgov := $dep/following-sibling::a[1]/text()
        let $formedep := $dep/parent::*/a[2]/text()
        let $formegov := $dep/parent::*/parent::*//item/a[1][text() = $idgov]/parent::*/a[2]/text()
        return
            <gov-SUB-dep>{concat($formegov, "-", $formedep)}</gov-SUB-dep>
    }
</corpus>