<?php
    include_once('./_common.php');

    $data_num = $_POST['data_num'];
    $get_title = $_POST['get_title'];
    
    $sql = "SELECT distinct hs_division_num FROM alliance_hospital WHERE hs_division_num = '$data_num'";
    $result = sql_query($sql);
    $rows = array();

    while($r = sql_fetch_array($result)) {
        $rows[] = $r;
    }

    echo json_encode($rows);
?>
