<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head><%@ include file="/common/common.jsp" %>
    <title>采购风格</title>
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="this is my page">
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--bootstrap-->
    <!--轮播-->
      <link rel="stylesheet" type="text/css" href="css/m_supply.css"/>
    <script src="js/m_supply.js"></script>
    <!--日期输入框-->
    <script src="${rctx }/js/bootstrap-datepicker.js"></script>
    <script src="${rctx }/js/locales/bootstrap-datepicker.zh-CN.js"></script>
    <link rel="stylesheet" type="text/css" href="${rctx }/css/bootstrap-datepicker.min.css">
    <!--前三种-->
    <script src="${rctx }/js/jquery.luara.0.0.1.min.js"></script>
    <!--第四种和第五种-->
    <script src="${rctx }/js/unslider.min.js"></script>

</head>
<body>

<div>
    <!--<h3>按钮</h3>-->
    <div class="btn btn-default-sp btn-sp">按钮</div>
</div>

<div>
    <!--<h3>日期输入框</h3>-->
    <input type="text" placeholder="点击输入日期" readonly class="input-date-sp">
</div>

<div>
    <h3>多链接导航</h3>

</div>

<div>
    <!--<h3>图片轮播</h3>-->
    <!--宽度是100%,高度为200px-->
    <!--<h5>渐隐</h5>-->
    <!--<hr/>-->
    <!--Luara图片切换骨架begin-->
    <!--<div class="example">-->
    <!--<ul>-->
    <!--<li><img src="image/1.jpg" alt="1"/></li>-->
    <!--<li><img src="image/2.jpg" alt="2"/></li>-->
    <!--<li><img src="image/3.jpg" alt="3"/></li>-->
    <!--<li><img src="image/4.jpg" alt="4"/></li>-->
    <!--</ul>-->
    <!--<ol class="luara-hide">-->
    <!--<li></li>-->
    <!--<li></li>-->
    <!--<li></li>-->
    <!--<li></li>-->
    <!--</ol>-->
    <!--</div>-->
    <!--&lt;!&ndash;Luara图片切换骨架end&ndash;&gt;-->

    <!--<h5>上滑</h5>-->
    <!--<hr/>-->
    <!--&lt;!&ndash;Luara图片切换骨架begin&ndash;&gt;-->
    <!--<div class="example1">-->
    <!--<ul>-->
    <!--<li><img src="image/1.jpg" alt="1"/></li>-->
    <!--<li><img src="image/2.jpg" alt="2"/></li>-->
    <!--<li><img src="image/3.jpg" alt="3"/></li>-->
    <!--<li><img src="image/4.jpg" alt="4"/></li>-->
    <!--</ul>-->
    <!--<ol class="luara-hide">-->
    <!--<li></li>-->
    <!--<li></li>-->
    <!--<li></li>-->
    <!--<li></li>-->
    <!--</ol>-->
    <!--</div>-->
    <!--&lt;!&ndash;Luara图片切换骨架end&ndash;&gt;-->

    <!--<h5>左滑</h5>-->
    <!--<hr/>-->
    <!--&lt;!&ndash;Luara图片切换骨架begin&ndash;&gt;-->
    <!--<div class="example2">-->
    <!--<ul>-->
    <!--<li><img src="image/1.jpg" alt="1"/></li>-->
    <!--<li><img src="image/2.jpg" alt="2"/></li>-->
    <!--<li><img src="image/3.jpg" alt="3"/></li>-->
    <!--<li><img src="image/4.jpg" alt="4"/></li>-->
    <!--</ul>-->
    <!--<ol class="luara-hide">-->
    <!--<li></li>-->
    <!--<li></li>-->
    <!--<li></li>-->
    <!--<li></li>-->
    <!--</ol>-->
    <!--</div>-->
    <!--&lt;!&ndash;Luara图片切换骨架end&ndash;&gt;-->

    <!--带有左右箭头的轮播-->


    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
            <li data-target="#carousel-example-generic" data-slide-to="1"></li>

        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox">
            <div class="item active">
                <img src="image/2.jpg" alt="..." class="carsousel-image">

                <!--<div class="carousel-caption">-->
                    <!--...-->
                <!--</div>-->
            </div>
            <div class="item">
                <img src="image/4.jpg" alt="..." class="carsousel-image">

                <!--<div class="carousel-caption">-->
                    <!--...-->
                <!--</div>-->
            </div>
            <!--...-->
        </div>

        <!-- Controls -->
        <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
    <!-- example_04 end -->
</div>
<div>
    <h3>搜索框</h3>
</div>

<div>
   <!-- <h3>商品列表</h3>-->
    <!--横向的商品列表-->
    <div class="list-group"  href="#" >
        <a class="list-group-item"  href="#">
            <div class="listitem-image" style="background-image: url('image/1.jpg')">
            </div>

            <div class="listitem-info">
                <div class="listitem-describation-title">
                    海鲜大酒楼
                </div>
                <div class="listitem-describation-body">
                    <p>这里是文字介绍</p>
                </div>
                <div class="listitem-buttom">
                    <span class="listitem-money">$20</span>
                </div>
            </div>
        </a>

        <a class="list-group-item"  href="#">
            <div class="listitem-image" style="background-image: url('image/1.jpg')">
            </div>

            <div class="listitem-info">
                <div class="listitem-describation-title">
                    海鲜大酒楼
                </div>
                <div class="listitem-describation-body">
                    <p>这里是文字介绍</p>
                </div>
                <div class="listitem-buttom">
                    <span class="listitem-money">$20</span>
                </div>
            </div>
        </a>



    </div>
    <!--横向的商品列表结束-->
    <!--纵向的商品列表-->
    <div class="list-group-no">
            <a href="#" class="list-group-item-no">
            <div class="listitem-group-decration-no">
            <div  class="listitem-image-no">
            </div>
            <div class="listitem-info-no">
                <div class="listitem-describation-title">
                    海鲜大酒楼
                </div>
                <div class="listitem-describation-body">
                    <p>这里是文字介绍</p>
                </div>
                <div class="listitem-buttom">
                    <span class="listitem-money">$20</span>
                </div>
            </div>
            </div>
            </a>
        <a href="#" class="list-group-item-no">
            <div class="listitem-group-decration-no">
                <div  class="listitem-image-no">
                </div>
                <div class="listitem-info-no">
                    <div class="listitem-describation-title">
                        海鲜大酒楼
                    </div>
                    <div class="listitem-describation-body">
                        <p>这里是文字介绍</p>
                    </div>
                    <div class="listitem-buttom">
                        <span class="listitem-money">$20</span>
                    </div>
                </div>
            </div>
        </a>

        </div>
    </div>
    <!--纵向的商品列表结束-->
</div>
    <div>
        <h3>排行榜</h3>
    </div>

    <div>
        <h3>点击图片可全屏查看大图</h3>
    </div>

    <div>
        <h3>可水平滚动的表格</h3>
    </div>

    <div>
        <h3>不可输入的数量框</h3>

        <h3>可输入的数量框</h3>
    </div>

</body>
</html>