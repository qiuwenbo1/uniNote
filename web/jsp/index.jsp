<%--
  Created by IntelliJ IDEA.
  User: seriouszyx
  Date: 2018/7/20
  Time: 13:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8" />
    <title>HelloNote</title>
</head>
<link rel="stylesheet" href="../css/style.css" />
<link href="../css/font-awesome.css" rel="stylesheet">
<script type="text/javascript" src="../js/jquery-1.10.1.min.js"></script>
<script type="text/javascript" src="../js/google-maps.js"></script>
<script src="http://tjs.sjs.sinajs.cn/open/api/js/wb.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript" src="../js/style.js"></script>
<script type="text/javascript" src="http://widget.renren.com/js/rrshare.js"></script>

<script type="text/javascript" charset="utf-8" src="http://static.bshare.cn/b/buttonLite.js#style=-1&amp;uuid=&amp;pophcol=2&amp;lang=zh"></script>
<script type="text/javascript" charset="utf-8" src="http://static.bshare.cn/b/bshareC0.js"></script>
<script>
    $(document).ready(function() {
        $(".vertical-nav").verticalnav({
            speed: 400,
            align: "left"
        });
    });
</script>

<body>
<c:if test="${empty loginUser}">
    <script type="text/javascript" language="javascript">
        alert("请登陆您的账号");
        window.location = '/jsp/login.jsp';
    </script>
</c:if>

<div id="top">
    <div id="helloUser">
        <div>${loginUser.username},欢迎您！</div>
    </div>
    <div id="share">
        <div class="bshare-custom icon-medium-plus" style="font-size: 40px;line-height: 63px !important;">
            <a title="分享到QQ空间" class="bshare-qzone"></a>
            <a title="分享到新浪微博" class="bshare-sinaminiblog"></a>
            <a title="分享到人人网" class="bshare-renren"></a>
            <a title="分享到腾讯微博" class="bshare-qqmb"></a>
            <a title="分享到网易微博" class="bshare-neteasemb"></a>
        </div>
    </div>
</div>
<div id="choose">
    <!--
        作者：offline
        时间：2018-07-18
        描述：对所需选项进行选择
    -->
    <div class="kePublic">
        <div class="content">
            <ul class="vertical-nav dark red" style="height: 760px;">
                <li class="active">
                    <a href="../UserInformation.html" target="_blank"><i class="icon-user " style="margin: -14.958px 14px 15px -20px;"></i>个人中心</a>
                </li>
                <li class="fristC">
                    <a href="#"><i class="icon-edit " style="margin: 0px 14px 0 -20px;font-size:30px"></i>新建笔记
                    </a>
                </li>
                <li class="fristC">
                    <a id="find"><i class="icon-search " style="margin: 0px 14px 0 -20px;font-size:30px"></i>搜索笔记</a>
                </li>
                <li class="fristC">
                    <a href="#"><i class="icon-th-list" style="margin: 0px 14px 0 -20px;font-size:30px"></i>笔记本
                        <span class="submenu-icon " style="line-height: 48px;"></span></a>
                    <ul>
                        <li class="sceondC">
                            <a href="#">我的第一个笔记本<span class="submenu-icon"></span></a>
                            <ul>
                                <li>
                                    <a href="#">编辑</a>
                                </li>
                                <li>
                                    <a href="#">添加标签</a>
                                </li>
                                <li>
                                    <a href="#">共享
                                    </a>
                                </li>
                                <li>
                                    <a href="#">删除</a>
                                </li>
                            </ul>
                        </li>
                        <li class="sceondC">
                            <a id="createNotebook">新建笔记本<span class="submenu-icon"></span></a>
                        </li>
                    </ul>
                </li>

                <li class="fristC">
                    <a href="#"><i class="icon-tags " style="margin: 0px 14px 0 -20px;font-size:30px"></i>标签分类<span class="submenu-icon " style="line-height: 48px;"></span></a>
                    <ul>
                        <li class="sceondC">
                            <a href="#">分类1<span class="submenu-icon "></span></a>
                            <ul>
                                <li>
                                    <a href="#">查看笔记</a>
                                </li>
                                <li>
                                    <a href="#">删除分类</a>

                                </li>

                            </ul>
                        </li>
                        <li class="sceondC">
                            <a href="#">分类2<span class="submenu-icon "></span></a>
                            <ul>
                                <li>
                                    <a href="#">查看笔记</a>
                                </li>
                                <li>
                                    <a href="#">删除分类</a>

                                </li>

                            </ul>
                        </li>
                        <li class="sceondC">
                            <a href="#">分类3<span class="submenu-icon "></span></a>
                            <ul>
                                <li>
                                    <a href="#">查看笔记</a>
                                </li>
                                <li>
                                    <a href="#">删除分类</a>

                                </li>

                            </ul>
                        </li>
                        <li class="sceondC">
                            <a href="#">新建分类</a>
                        </li>

                    </ul>
                </li>
                <li class="fristC">
                    <a href="#"><i class="icon-comments " style="margin: 0px 14px 0 -20px;font-size:30px"></i>工作评论<span class="submenu-icon " style="line-height: 48px;"></span></a>
                    <ul>
                        <li class="sceondC">
                            <a href="#">添加群聊</a>
                        </li>
                        <li class="sceondC">
                            <a href="#">查看已有群聊</a>
                        </li>

                    </ul>
                </li>
                <li class="fristC">
                    <a href="#"><i class="icon-trash" style="margin: 0px 14px 0 -20px;font-size:30px"></i>废纸篓<span class="submenu-icon " style="line-height: 48px;"></span></a>

                    <ul>
                        <li class="sceondC">
                            <a href="#">还原笔记</a>
                        </li>
                        <li class="sceondC">
                            <a href="#">彻底删除</a>
                        </li>

                    </ul>

                </li>
                <li class="fristC">
                    <a id="logoff" href="${pageContext.request.contextPath}/UserServlet?method=logOut"><i class="icon-off " style="margin: 0px 14px 0 -20px;font-size:30px"></i>注销账户</a>
                </li>
            </ul>
        </div>
        <div class="clear"></div>
    </div>

</div>
<div id="workPlace">
    <div id="box">
        <input type="text" name="search" placeholder="请输入关键字">
        <div id="search">搜索</div>
    </div>

</div>
<div id="mainPlace">
</div>

<!-- 各种弹出窗口 -->
<div id="createNotebookPop">
    <form method="post" action="${pageContext.request.contextPath}/NotebookServlet?method=createNotebook">
        <tr>
            <td>

            </td>
        </tr>
    </form>
</div>
</body>


</html>
