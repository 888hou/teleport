<%!
    # -*- coding: utf-8 -*-
    page_title_ = '登录'
    ## 	page_menu_ = ['host']
    ## 	page_id_ = 'host'
%>
<%inherit file="page_base.mako"/>

<%block name="extend_js">
    <script type="text/javascript" src="${ static_url('js/ui/auth/login.js') }"></script>
</%block>

<%block name="embed_js" >
    <script type="text/javascript">
        ywl.add_page_options(${ page_param });
    </script>
</%block>

<div class="row">
    <div class="col-md-6">
        <div id="leftside">
        </div>
    </div>


    <div class="col-md-5">
        <div class="auth-box auth-box-lg">
            <div class="header">
                <a id="login-type-password" class="title selected" href="javascript:;">账号/密码登录</a>
                <a id="login-type-oath" class="title" href="javascript:;">身份验证器登录</a>
            </div>

            <div class="inputarea">
                <div id="login-area-account" class="login-account">
                    <div class="inputbox">
                        <div class="input-group input-group-lg">
                            <span class="input-group-addon"><i class="fa fa-user fa-fw"></i></span>
                            <input id="username-account" type="text" class="form-control" placeholder="账号：邮箱地址或手机号" data-toggle="popover" data-trigger="manual" data-placement="top">
                        </div>
                    </div>

                    <div class="inputbox">
                        <div class="input-group input-group-lg">
                            <span class="input-group-addon"><i class="fa fa-key fa-fw"></i></span>
                            <input id="password-account" type="password" class="form-control" placeholder="密码" data-toggle="popover" data-trigger="manual" data-placement="top">
                        </div>
                    </div>

                </div>

                <div id="login-area-captcha" class="inputbox">
                    <div class="input-group input-group-lg">
                        <span class="input-group-addon"><i class="fa fa-check-square-o fa-fw"></i></span>
                        <input id="captcha" type="text" class="form-control" placeholder="验证码"
                               data-toggle="popover" data-trigger="manual" data-placement="top">
                        <span class="input-group-addon"><a href="javascript:;"><img id="captcha-image" src=""></a></span>
                    </div>
                    <p class="input-addon-desc">验证码，点击图片可更换</p>
                </div>

                <div id="login-area-oath" style="display:none;">
                    <div class="inputbox">
                        <div class="input-group input-group-lg">
                            <span class="input-group-addon"><i class="fa fa-clock-o fa-fw"></i></span>
                            <input id="oath-code" type="text" class="form-control" placeholder="6位数字身份验证器动态验证码">
                        </div>
                    </div>
                </div>


                <div class="inputbox">
                    <div class="checkbox">
                        <label><input id="remember-me" type="checkbox" value=""> 记住我，12小时内无需重新登录。</label>
                    </div>
                </div>

                <div class="inputbox">
                    <button id="btn-login" class="btn btn-primary btn-lg btn-block">登 录</button>
                </div>

            </div>
            <div>
                <p id="message" class="op_box" style="display:none;"></p>
            </div>

        </div>
    </div>
</div>

