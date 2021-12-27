<html>
  <body>
    <table border="1">
    <tr><th>Target</th>
    <th>Successor</th>
    </tr>
      {
    let $get_target := "has",
    $doc_words := collection("")//w[lower-case(normalize-space()) = $get_target]
    for $get_successor in ($doc_words/lower-case(normalize-space(following-sibling::w[1])))
    return
    <tr>
    <td> { $get_target }</td>
    <td> { $get_successor } </td>
    </tr>
    }
    </table>
  </body>
</html>