<?php
    include_once('./_common.php');

    $hs_name = $_POST['hs_name'];
    $data_num = $_POST['division_num'];
    
    $sql = "SELECT * FROM alliance_hospital WHERE hs_division_num = '$data_num'";
    $result = sql_query($sql);
    $rows = array();

    while($r = sql_fetch_array($result)) {
        $rows[] = $r;
    }

    echo json_encode($rows);
?>
