<?php
if (file_exists('products.xml')) {
    $xml = simplexml_load_file('products.xml');
    foreach ($xml->categorie as $categorie) {
        $atrCat = $categorie->attributes();
        echo "<h3>{$categorie->title} - ��������� �{$atrCat['id']}</h3>";

        echo "<table border='1'>
                <thead>
                 <th>��������</th>
                 <th>����������</th>
                 <th>����</th>
                </thead>
             ";
        foreach($categorie->products->product as $product){
            echo "<tr>
                    <td>{$product->title}</td>
                    <td>{$product->count}</td>
                    <td>{$product->price}</td>
                    ";
        }
        echo "</table>";
    }
} else {
    echo '������ ����� ������������.';
}