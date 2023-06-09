<?php
if (!defined('_GNUBOARD_')) exit; // 개별 페이지 접근 불가

if (G5_IS_MOBILE) {
    include_once(G5_THEME_MOBILE_PATH.'/head.php');
    return;
}

include_once(G5_THEME_PATH.'/head.sub.php');
include_once(G5_LIB_PATH.'/latest.lib.php');
include_once(G5_LIB_PATH.'/outlogin.lib.php');
include_once(G5_LIB_PATH.'/poll.lib.php');
include_once(G5_LIB_PATH.'/visit.lib.php');
include_once(G5_LIB_PATH.'/connect.lib.php');
include_once(G5_LIB_PATH.'/popular.lib.php');
?>

<!-- 상단 시작 { -->
    
<div id="hd">
    <h1 id="hd_h1"><?php echo $g5['title'] ?></h1>
    <div id="skip_to_container"><a href="#container">본문 바로가기</a></div>

    <?php
    if(defined('_INDEX_')) { // index에서만 실행
        include G5_BBS_PATH.'/newwin.inc.php'; // 팝업레이어
    }
    ?>
    <div id="hd_wrapper">
        <!-- <div class="header_wrap">
            <div id="logo">
                <a href="<?php echo G5_URL ?>"><img src="<?php echo G5_THEME_URL ?>/img/svg/logo_white.svg" alt="<?php echo $config['cf_title']; ?>"></a>
            </div>
            <nav>
                <div class="nav_list"><a href="<?php echo G5_URL?>/test.php">About</a></div>
                <div class="nav_list"><a href="page.php?id=dashboard#thirdPage">MP PLAN</a></div>
                <div class="nav_list"><a href="page.php?id=dashboard#eightPage">Contact</a></div>
            </nav>
        </div> -->
        
        <nav class="header navbar navbar-expand-md navbar-light">
            <div id="logo">
                <a href="<?php echo G5_URL ?>"><img src="<?php echo G5_THEME_URL ?>/img/dashboard/logo_white.png" alt="<?php echo $config['cf_title']; ?>"></a>
            </div>
            <!-- <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar" aria-controls="navbar" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button> -->
            <button class="open_menu navbar-toggler">
                <span class="navbar-toggler-icon"></span>
            </button>

            <ul class="nav_list_wrap">
                <li><a href="page.php?id=dashboard#thirdPage">Company</a></li>
                <li><a href="page.php?id=dashboard#fourPage">Business</a></li>
                <li><a href="page.php?id=dashboard#sixPage">Contact</a></li>
            </ul>
            <!-- <div class="collapse navbar-collapse" id="navbar">
                <div class="navbar-nav">
                    <div class="nav-item"><a class="nav-link" href="<?php echo G5_URL?>/test.php">Company</a></div>
                    <div class="nav-item"><a class="nav-link" href="page.php?id=dashboard#thirdPage">Business</a></div>
                    <div class="nav-item"><a class="nav-link" href="page.php?id=dashboard#eightPage">Contact</a></div>
                </div>
            </div> -->
            
        </nav>
        
        <!-- <ul class="hd_login">        
            <?php if ($is_member) {  ?>
            <li><a href="<?php echo G5_BBS_URL ?>/member_confirm.php?url=<?php echo G5_BBS_URL ?>/register_form.php">정보수정</a></li>
            <li><a href="<?php echo G5_BBS_URL ?>/logout.php">로그아웃</a></li>
            <?php if ($is_admin) {  ?>
            <li class="tnb_admin"><a href="<?php echo correct_goto_url(G5_ADMIN_URL); ?>">관리자</a></li>
            <?php }  ?>
            <?php } else {  ?>
            <li><a href="<?php echo G5_BBS_URL ?>/register.php">회원가입</a></li>
            <li><a href="<?php echo G5_BBS_URL ?>/login.php">로그인</a></li>
            <?php }  ?>

        </ul> -->
    </div>
    
    
    <!-- <nav id="gnb">
        <h2>메인메뉴</h2>
        <div class="gnb_wrap">
            <ul id="gnb_1dul">
                <li class="gnb_1dli gnb_mnal"><button type="button" class="gnb_menu_btn" title="전체메뉴"><i class="fa fa-bars" aria-hidden="true"></i><span class="sound_only">전체메뉴열기</span></button></li>
                <?php
				$menu_datas = get_menu_db(0, true);
				$gnb_zindex = 999; // gnb_1dli z-index 값 설정용
                $i = 0;
                foreach( $menu_datas as $row ){
                    if( empty($row) ) continue;
                    $add_class = (isset($row['sub']) && $row['sub']) ? 'gnb_al_li_plus' : '';
                ?>
                <li class="gnb_1dli <?php echo $add_class; ?>" style="z-index:<?php echo $gnb_zindex--; ?>">
                    <a href="<?php echo $row['me_link']; ?>" target="_<?php echo $row['me_target']; ?>" class="gnb_1da"><?php echo $row['me_name'] ?></a>
                    <?php
                    $k = 0;
                    foreach( (array) $row['sub'] as $row2 ){

                        if( empty($row2) ) continue; 

                        if($k == 0)
                            echo '<span class="bg">하위분류</span><div class="gnb_2dul"><ul class="gnb_2dul_box">'.PHP_EOL;
                    ?>
                        <li class="gnb_2dli"><a href="<?php echo $row2['me_link']; ?>" target="_<?php echo $row2['me_target']; ?>" class="gnb_2da"><?php echo $row2['me_name'] ?></a></li>
                    <?php
                    $k++;
                    }   //end foreach $row2

                    if($k > 0)
                        echo '</ul></div>'.PHP_EOL;
                    ?>
                </li>
                <?php
                $i++;
                }   //end foreach $row

                if ($i == 0) {  ?>
                    <li class="gnb_empty">메뉴 준비 중입니다.<?php if ($is_admin) { ?> <a href="<?php echo G5_ADMIN_URL; ?>/menu_list.php">관리자모드 &gt; 환경설정 &gt; 메뉴설정</a>에서 설정하실 수 있습니다.<?php } ?></li>
                <?php } ?>
            </ul>
            <div id="gnb_all">
                <h2>전체메뉴</h2>
                <ul class="gnb_al_ul">
                    <?php
                    
                    $i = 0;
                    foreach( $menu_datas as $row ){
                    ?>
                    <li class="gnb_al_li">
                        <a href="<?php echo $row['me_link']; ?>" target="_<?php echo $row['me_target']; ?>" class="gnb_al_a"><?php echo $row['me_name'] ?></a>
                        <?php
                        $k = 0;
                        foreach( (array) $row['sub'] as $row2 ){
                            if($k == 0)
                                echo '<ul>'.PHP_EOL;
                        ?>
                            <li><a href="<?php echo $row2['me_link']; ?>" target="_<?php echo $row2['me_target']; ?>"><?php echo $row2['me_name'] ?></a></li>
                        <?php
                        $k++;
                        }   //end foreach $row2

                        if($k > 0)
                            echo '</ul>'.PHP_EOL;
                        ?>
                    </li>
                    <?php
                    $i++;
                    }   //end foreach $row

                    if ($i == 0) {  ?>
                        <li class="gnb_empty">메뉴 준비 중입니다.<?php if ($is_admin) { ?> <br><a href="<?php echo G5_ADMIN_URL; ?>/menu_list.php">관리자모드 &gt; 환경설정 &gt; 메뉴설정</a>에서 설정하실 수 있습니다.<?php } ?></li>
                    <?php } ?>
                </ul>
                <button type="button" class="gnb_close_btn"><i class="fa fa-times" aria-hidden="true"></i></button>
            </div>
            <div id="gnb_all_bg"></div>
        </div>
    </nav> -->
    <a class="top_button" href="#">
        <i class="fa fa-arrow-up"></i>
    </a>
    <div class="page_move_btn">
    </div>
</div>
<div class="nav_bar_wrap">
    <div class="nav_bar">
        <p><a href="page.php?id=dashboard#thirdPage">Company</a></p>
        <p><a href="page.php?id=dashboard#fourPage">Business</a></p>
        <p><a href="page.php?id=dashboard#sixPage">Contact</a></p>
    </div>
</div>
<div class="menu_back_drop fade"></div>
<script>
    $(function() {

        // 탑버튼
        var nowUrl = location.href;
        var arrUrl = nowUrl.split('#');
        var targetUrl = arrUrl[0].concat('#firstPage');

        $('.top_button').on('click',function() {
            $(this).attr('href',targetUrl);
        });

        $(".gnb_menu_btn").click(function(){
            $("#gnb_all, #gnb_all_bg").show();
        });
        $(".gnb_close_btn, #gnb_all_bg").click(function(){
            $("#gnb_all, #gnb_all_bg").hide();
        });
    });
</script>
<!-- } 상단 끝 -->

<!-- 콘텐츠 시작 { -->
<!-- <div id="wrapper"> --> 
    <!-- <div id="container_wr"> -->

        <!-- <div id="aside">
            <?php //echo outlogin('theme/basic'); // 외부 로그인, 테마의 스킨을 사용하려면 스킨을 theme/basic 과 같이 지정 ?>
            <?php //echo poll('theme/basic'); // 설문조사, 테마의 스킨을 사용하려면 스킨을 theme/basic 과 같이 지정 ?>
        </div> -->

        <!-- <div id="container"> -->
            <!-- <?php if (!defined("_INDEX_")) { ?><h2 id="container_title"><span title="<?php echo get_text($g5['title']); ?>"><?php echo get_head_title($g5['title']); ?></span></h2><?php } ?> -->

