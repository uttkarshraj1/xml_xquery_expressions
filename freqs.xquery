<html>
  <body>
    <table border="1">
    <tr><th>Target</th>
    <th>Successor</th>
    <th>Frequency</th>
    </tr>
      {
    let $get_target := "has",
    $doc_words := collection("")//w[lower-case(normalize-space()) = $get_target]
    for $get_successor in fn:distinct-values($doc_words/lower-case(normalize-space(following-sibling::w[1])))
    let $get_frequency := $doc_words/lower-case(normalize-space(following-sibling::w[1]))[. = $get_successor]
    order by fn:count($get_frequency) descending
    return
    <tr>
    <td> { $get_target }</td>
    <td> { $get_successor } </td>
    <td> { count($get_frequency) } </td>
    </tr>
    }
    </table>
  </body>
</html>