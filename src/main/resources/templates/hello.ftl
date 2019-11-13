<!DOCTYPE html>
<head>
    <meta charset="UTF-8"/>
    <link rel="stylesheet" type="text/css" href="/vendors/layui/css/layui.css">
</head>
<body>
<div class="layui-fluid">
    <div class="layui-card">
        <div class="layui-card-header">个人爱好${name}</div>
        <div class="layui-card-body">
            <fieldset class="layui-elem-field">
                <legend>爱好</legend>
                <div class="layui-field-box">
                    <form class="layui-form" action="/addUser" lay-filter="component-form-group">
                        <div class="layui-form-item">
                            <label class="layui-form-label">验证必填项</label>
                            <div class="layui-input-block">
                                <input type="text" name="username" lay-verify="required" placeholder="请输入"
                                       autocomplete="off" class="layui-input">
                            </div>
                        </div>

                        <div class="layui-form-item">
                            <div class="layui-inline">
                                <label class="layui-form-label">验证手机</label>
                                <div class="layui-input-inline">
                                    <input type="tel" name="phone" lay-verify="required|phone" autocomplete="off"
                                           class="layui-input">
                                </div>
                            </div>
                            <div class="layui-inline">
                                <label class="layui-form-label">验证邮箱</label>
                                <div class="layui-input-inline">
                                    <input type="text" name="email" lay-verify="email" autocomplete="off"
                                           class="layui-input">
                                </div>
                            </div>
                        </div>

                        <div class="layui-form-item">
                            <div class="layui-inline">
                                <label class="layui-form-label">范围</label>
                                <div class="layui-input-inline" style="width: 100px;">
                                    <input type="text" name="price_min" placeholder="￥" autocomplete="off"
                                           class="layui-input">
                                </div>
                                <div class="layui-form-mid">-</div>
                                <div class="layui-input-inline" style="width: 100px;">
                                    <input type="text" name="price_max" placeholder="￥" autocomplete="off"
                                           class="layui-input">
                                </div>
                            </div>
                        </div>

                        <div class="layui-form-item">
                            <label class="layui-form-label">单行选择框</label>
                            <div class="layui-input-block">
                                <select name="city" lay-verify="required">
                                    <option value=""></option>
                                    <option value="0">北京</option>
                                    <option value="1">上海</option>
                                    <option value="2">广州</option>
                                    <option value="3">深圳</option>
                                    <option value="4">杭州</option>
                                </select>
                            </div>
                        </div>

                        <div class="layui-form-item">
                            <label class="layui-form-label">复选框</label>
                            <div class="layui-input-block">
                                <input type="checkbox" name="like[write]" title="写作">
                                <input type="checkbox" name="like[read]" title="阅读" checked="">
                                <input type="checkbox" name="like[game]" title="游戏">
                            </div>
                        </div>

                        <div class="layui-form-item" pane="">
                            <label class="layui-form-label">原始复选框</label>
                            <div class="layui-input-block">
                                <input type="checkbox" name="like1[write]" lay-skin="primary" title="写作" checked="">
                                <input type="checkbox" name="like1[read]" lay-skin="primary" title="阅读">
                                <input type="checkbox" name="like1[game]" lay-skin="primary" title="游戏" disabled="">
                            </div>
                        </div>

                        <div class="layui-form-item">
                            <label class="layui-form-label">开关-默认关</label>
                            <div class="layui-input-block">
                                <input type="checkbox" name="close" lay-skin="switch" lay-text="ON|OFF">
                            </div>
                        </div>

                        <div class="layui-form-item">
                            <label class="layui-form-label">单选框</label>
                            <div class="layui-input-block">
                                <input type="radio" name="sex" value="男" title="男" checked="">
                                <input type="radio" name="sex" value="女" title="女">
                                <input type="radio" name="sex" value="禁" title="禁用" disabled="">
                            </div>
                        </div>

                        <div class="layui-form-item layui-form-text">
                            <label class="layui-form-label">普通文本域</label>
                            <div class="layui-input-block">
                                <textarea name="text" placeholder="请输入内容" class="layui-textarea"></textarea>
                            </div>
                        </div>
                        <div class="layui-form-item layui-layout-admin">
                            <div class="layui-input-block">
                                <div class="layui-footer" style="left: 0;">
                                    <button class="layui-btn" lay-submit="" lay-filter="component-form-demo1">立即提交
                                    </button>
                                    <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </fieldset>
            <br>
            <fieldset class="layui-elem-field layui-field-title">
                <legend>带标题的横线</legend>
                <div class="layui-field-box">
                    <p style="width: 100px" class="layui-bg-blue layui-elip layui-inline">妈妈啊师傅的撒大师傅发射点发</p>
                    <p style="width: 100px;" class="layui-inline layui-word-aux">妈妈啊师</p>
                </div>
            </fieldset>
            <br>
        </div>
    </div>

</div>
</body>
</html>
<script type="text/javascript" src="/vendors/layui/layui.all.js"></script>
<script>
    layui.use(['form', 'layer'], function () {
        var form = layui.form; //只有执行了这一步，部分表单元素才会自动修饰成功
    });
</script>
