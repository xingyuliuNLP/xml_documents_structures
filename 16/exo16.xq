<comptage>
  {
    for $pos in collection("dela-fr-public-u8.dic")/distinct-values(//entry/pos/@name)
    where //entry/pos/@name = $pos
    let $nb := count(//entry/pos[@name=$pos])
    return
    <item>
      <pos>{$pos}</pos>
      <nbre>{$nb}</nbre>
    </item>
  }
</comptage>