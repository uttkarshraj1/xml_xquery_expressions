<html>
    <body>
        <table border="1">
     <tr><th>Target</th>
         <th>Successor</th>
         <th>Probability</th>                     
    </tr>
    {
    let $get_target := "has",
    $doc_words := collection("")//w[lower-case(normalize-space()) = $get_target]
    for $get_successor in fn:distinct-values($doc_words/lower-case(normalize-space(following-sibling::w[1])))
    [position() = 1 to 20]
    let $get_probability := fn:count($get_successor) div count(//w[lower-case(normalize-space()) = lower-case(normalize-space($get_successor))])    
    return
    <tr>
    <td> { $get_target } </td>
    <td> { $get_successor } </td>
    <td> { $get_probability } </td>                                 
    </tr>
    }
        </table>
    </body>
</html>