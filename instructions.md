<!-- TOC -->

- [基础运维](#基础运维)
  - [省市区/行政区数据](#省市区行政区数据)
    - [读取所有省份](#读取所有省份)
    - [读取下级省市区数据](#读取下级省市区数据)
  - [读取 Banner 列表](#读取-banner-列表)
  - [公告管理](#公告管理)
    - [读取最新的一条公告](#读取最新的一条公告)
    - [获取公告列表](#获取公告列表)
    - [获取公告详情](#获取公告详情)
  - [读取后台vip等级（用于判断是免费后台还是专业后台）](#读取后台vip等级用于判断是免费后台还是专业后台)
  - [系统参数](#系统参数)
    - [读取系统参数](#读取系统参数)
    - [批量读取系统参数](#批量读取系统参数)
  - [获取友情链接/合作伙伴](#获取友情链接合作伙伴)
  - [JSON数据云存储](#json数据云存储)
    - [设置 JSON 数据](#设置-json-数据)
    - [读取设置的 JSON 数据列表](#读取设置的-json-数据列表)
    - [删除 JSON 数据](#删除-json-数据)
  - [分布式文件管理](#分布式文件管理)
    - [上传本地文件](#上传本地文件)
    - [下载远程文件](#下载远程文件)
    - [获取文件列表](#获取文件列表)
- [安全中心](#安全中心)
  - [图形验证码](#图形验证码)
    - [获取验证码](#获取验证码)
    - [校验输入验证码是否正确](#校验输入验证码是否正确)
  - [短信验证码](#短信验证码)
    - [获取验证码(发送短信)](#获取验证码发送短信)
    - [校验输入验证码是否正确](#校验输入验证码是否正确-1)
  - [邮箱验证码](#邮箱验证码)
    - [获取验证码(发送邮件)](#获取验证码发送邮件)
    - [校验输入验证码是否正确](#校验输入验证码是否正确-2)
- [登录 & 注册](#登录--注册)
  - [用户注册](#用户注册)
    - [用户名注册](#用户名注册)
    - [邮箱注册](#邮箱注册)
    - [手机号注册](#手机号注册)
    - [QQ互联一键注册](#qq互联一键注册)
    - [微信一键注册](#微信一键注册)
  - [用户登录](#用户登录)
    - [用户名登录](#用户名登录)
    - [邮箱登录](#邮箱登录)
    - [手机号码登录](#手机号码登录)
    - [QQ互联一键登录](#qq互联一键登录)
    - [微信一键登录](#微信一键登录)
  - [检测登录 token 是否有效](#检测登录-token-是否有效)
  - [重置密码](#重置密码)
    - [用手机找回密码](#用手机找回密码)
    - [用邮箱找回密码](#用邮箱找回密码)
  - [退出登录](#退出登录)
- [用户信息](#用户信息)
  - [绑定手机号码](#绑定手机号码)
    - [短信验证码认证](#短信验证码认证)
  - [设置用户名](#设置用户名)
  - [设置邮箱地址](#设置邮箱地址)
  - [绑定QQ便于后期QQ互联一键登录](#绑定qq便于后期qq互联一键登录)
  - [绑定微信一键登录](#绑定微信一键登录)
  - [获取用户信息](#获取用户信息)
  - [修改用户资料](#修改用户资料)
  - [实名认证](#实名认证)
  - [会员体系](#会员体系)
    - [获取所有的会员等级](#获取所有的会员等级)
    - [查看会员等级详情](#查看会员等级详情)
    - [会员等级收费列表](#会员等级收费列表)
    - [购买会员](#购买会员)
    - [获取我的购买 / 续费记录](#获取我的购买--续费记录)
  - [收货地址管理](#收货地址管理)
    - [获取所有的收货地址](#获取所有的收货地址)
    - [添加收货地址](#添加收货地址)
    - [更新收货地址](#更新收货地址)
    - [获取默认的地址](#获取默认的地址)
    - [读取地址详细](#读取地址详细)
    - [删除收货地址](#删除收货地址)
- [CMS模块](#cms模块)
  - [分类管理](#分类管理)
    - [获取所有分类](#获取所有分类)
    - [获取分类详情](#获取分类详情)
  - [文章管理](#文章管理)
    - [文章列表](#文章列表)
    - [文章详情](#文章详情)
    - [文章点赞/踩](#文章点赞踩)
    - [文章点赞/踩记录](#文章点赞踩记录)
    - [获取该文章的上一篇/下一篇文章信息](#获取该文章的上一篇下一篇文章信息)
    - [文章投稿(用户发布文章)](#文章投稿用户发布文章)
    - [删除自己发布的文章](#删除自己发布的文章)
  - [单页信息(关于我们/联系我们/...)](#单页信息关于我们联系我们)
  - [获取文章标签列表(用于展示类似“标签云”)](#获取文章标签列表用于展示类似标签云)
  - [留言 & 反馈](#留言--反馈)
    - [提交留言反馈](#提交留言反馈)
    - [读取留言 & 评论列表](#读取留言--评论列表)
- [商城模块](#商城模块)
  - [门店管理](#门店管理)
    - [读取所有的门店列表](#读取所有的门店列表)
    - [门店详情](#门店详情)
  - [商品分类](#商品分类)
  - [商品管理](#商品管理)
    - [获取商品列表](#获取商品列表)
    - [获取商品详情信息](#获取商品详情信息)
    - [获取商品的限购设置](#获取商品的限购设置)
    - [获取商品价格「一般用在选择不同规格尺寸后需要实时显示售价」](#获取商品价格一般用在选择不同规格尺寸后需要实时显示售价)
    - [获取商品的每日价格&每日库存「适用酒店预订、票务预订类」](#获取商品的每日价格每日库存适用酒店预订票务预订类)
    - [计算物流/快递模板费用计算方法](#计算物流快递模板费用计算方法)
    - [拉取当前会员可以显示的折扣信息](#拉取当前会员可以显示的折扣信息)
    - [获取商品的评价](#获取商品的评价)
  - [商品收藏](#商品收藏)
    - [收藏某个商品](#收藏某个商品)
    - [检测当前商品是否已被收藏](#检测当前商品是否已被收藏)
    - [获取收藏的商品](#获取收藏的商品)
    - [删除收藏的某个商品](#删除收藏的某个商品)
  - [订单管理](#订单管理)
    - [创建订单](#创建订单)
    - [关闭订单](#关闭订单)
    - [删除订单](#删除订单)
    - [支付订单[使用余额]](#支付订单使用余额)
    - [确认收货](#确认收货)
    - [订单核销](#订单核销)
    - [订单汇总统计](#订单汇总统计)
    - [获取所有订单](#获取所有订单)
    - [订单详情](#订单详情)
    - [评价接口](#评价接口)
    - [申请退换货[售后]](#申请退换货售后)
    - [申请退换货详情](#申请退换货详情)
    - [撤销退换货申请](#撤销退换货申请)
    - [拉取某订单的所有售后记录](#拉取某订单的所有售后记录)
  - [虚拟物品交易[知识付费]](#虚拟物品交易知识付费)
    - [商品列表](#商品列表)
    - [商品详情](#商品详情)
    - [购买商品](#购买商品)
    - [我的购买记录](#我的购买记录)
- [根据视频编号读取视频详情](#根据视频编号读取视频详情)
- [营销工具](#营销工具)
  - [优惠券管理](#优惠券管理)
    - [获取系统所有优惠券列表](#获取系统所有优惠券列表)
    - [查看优惠券详情](#查看优惠券详情)
    - [领取优惠券](#领取优惠券)
    - [我的所有优惠券](#我的所有优惠券)
    - [赠送优惠券给他人](#赠送优惠券给他人)
    - [兑换优惠券](#兑换优惠券)
  - [商品砍价](#商品砍价)
    - [获取商品砍价设置](#获取商品砍价设置)
    - [发起[创建]砍价，继而邀请好友来帮自己砍到底价](#发起创建砍价继而邀请好友来帮自己砍到底价)
    - [我发起[创建]的砍价详情](#我发起创建的砍价详情)
    - [放弃上一次砍价](#放弃上一次砍价)
    - [砍价详情](#砍价详情)
    - [帮好友砍价](#帮好友砍价)
    - [查询我帮好友砍掉的金额](#查询我帮好友砍掉的金额)
  - [拼团功能](#拼团功能)
    - [获取某一个商品的拼团配置](#获取某一个商品的拼团配置)
    - [批量获取一组商品的拼团配置](#批量获取一组商品的拼团配置)
    - [开团[我发起一个团购，我是团长，让别人来参加]](#开团我发起一个团购我是团长让别人来参加)
    - [获取某个商品当前进行中的所有拼团](#获取某个商品当前进行中的所有拼团)
    - [获取某个团购的参与用户列表](#获取某个团购的参与用户列表)
    - [读取我参与过的所有团购记录](#读取我参与过的所有团购记录)
  - [三级分销](#三级分销)
    - [申请成为分销商](#申请成为分销商)
    - [申请进度查询](#申请进度查询)
    - [团队管理](#团队管理)
    - [佣金记录[返佣明细]](#佣金记录返佣明细)
- [积分模块](#积分模块)
  - [读取订单积分抵扣规则](#读取订单积分抵扣规则)
  - [读取积分赠送规则](#读取积分赠送规则)
  - [签到送积分](#签到送积分)
    - [签到规则](#签到规则)
    - [签到](#签到)
    - [读取今日签到信息](#读取今日签到信息)
    - [签到记录](#签到记录)
  - [使用积分券兑换积分](#使用积分券兑换积分)
  - [积分明细](#积分明细)
- [资金 / 财务 相关](#资金--财务-相关)
  - [获取资产信息（余额、可用积分）](#获取资产信息余额可用积分)
  - [在线支付(充值)](#在线支付充值)
    - [获取充值规则（满多少送多少）](#获取充值规则满多少送多少)
    - [微信支付](#微信支付)
    - [支付宝支付(半自动)](#支付宝支付半自动)
    - [充值记录](#充值记录)
  - [优惠买单](#优惠买单)
    - [获取买单优惠](#获取买单优惠)
    - [买单](#买单)
  - [资金流水](#资金流水)
  - [提现管理](#提现管理)
    - [申请提现](#申请提现)
    - [提现记录](#提现记录)
    - [提现记录详情](#提现记录详情)
  - [发票管理](#发票管理)
    - [申请发票](#申请发票)
    - [申请的发票列表](#申请的发票列表)
    - [发票详情](#发票详情)
  - [押金管理](#押金管理)
    - [支付押金](#支付押金)
    - [读取押金列表](#读取押金列表)
    - [押金详情](#押金详情)
    - [申请退回押金](#申请退回押金)
- [活动 & 工具](#活动--工具)
  - [分布式系统唯一ID](#分布式系统唯一id)
  - [手机号段服务](#手机号段服务)
    - [归属地查询](#归属地查询)
    - [读取下一个号段](#读取下一个号段)
  - [抽奖功能](#抽奖功能)
    - [抽奖项目详情](#抽奖项目详情)
    - [参与抽奖](#参与抽奖)
    - [我的抽奖信息](#我的抽奖信息)
    - [抽奖项目的所有抽奖记录明细](#抽奖项目的所有抽奖记录明细)
  - [预约/报名](#预约报名)
    - [读取所有的预约/报名项目](#读取所有的预约报名项目)
    - [项目详情](#项目详情)
    - [进行预约或者在线报名](#进行预约或者在线报名)
    - [支付报名费](#支付报名费)
    - [更新预约/报名信息](#更新预约报名信息)
    - [我的报名信息](#我的报名信息)
    - [我所有的预约记录/报名记录](#我所有的预约记录报名记录)
    - [读取某个项目的所有报名团队列表](#读取某个项目的所有报名团队列表)
    - [查看团队详情](#查看团队详情)
    - [拉取团队成员列表](#拉取团队成员列表)
    - [团队长删除[踢]团队成员](#团队长删除踢团队成员)
  - [投票功能](#投票功能)
    - [投票项目](#投票项目)
    - [投票详情](#投票详情)
    - [我的投票](#我的投票)
    - [我要投票](#我要投票)
    - [查看投票明细](#查看投票明细)
  - [商品条码查询](#商品条码查询)
  - [短链接服务](#短链接服务)
  - [地图工具](#地图工具)
    - [计算2个坐标之间的距离](#计算2个坐标之间的距离)
    - [将坐标地址转换为详细地址](#将坐标地址转换为详细地址)
    - [地图上搜索](#地图上搜索)
  - [排队叫号](#排队叫号)
    - [获取所有的队列](#获取所有的队列)
    - [取号](#取号)
    - [我的取号情况](#我的取号情况)
- [社交通讯](#社交通讯)
  - [好友管理](#好友管理)
    - [读取好友列表](#读取好友列表)
    - [添加好友](#添加好友)
    - [查看好友详情](#查看好友详情)
  - [站内信管理](#站内信管理)
    - [站内消息列表](#站内消息列表)
    - [设置为已读](#设置为已读)
    - [删除站内信](#删除站内信)

<!-- /TOC -->

# 基础运维

## 省市区/行政区数据

### 读取所有省份

```js
Apifm.province()
```

### 读取下级省市区数据

```js
Apifm.nextRegion(String pid)
```

## 读取 Banner 列表

```js
Apifm.banners([Map<String, String> params])
```

读取后台设置的Banner数据，可用于展示App启动图、轮播图等

## 公告管理

### 读取最新的一条公告

```js
Apifm.noticeLastOne([String type])
```

### 获取公告列表

```js
Apifm.noticeList(Map<String, String> params)
```

### 获取公告详情

```js
Apifm.noticeDetail(int id)
```

## 读取后台vip等级（用于判断是免费后台还是专业后台）

```js
Apifm.vipLevel()
```

## 系统参数

### 读取系统参数

```js
Apifm.queryConfigValue(String key)
```

### 批量读取系统参数

```js
Apifm.queryConfigBatch(String keys)
```

多个系统参数编号，用英文的逗号分隔，该方法会返回多个系统参数设置的数组

## 获取友情链接/合作伙伴

```js
Apifm.friendlyPartnerList([String type])
```

获取后台指定类型的合作伙伴/友情链接数据

## JSON数据云存储

### 设置 JSON 数据

```js
Apifm.jsonSet(Map<String, String> params)
```

参数说明：

1. type 自定义类型，最大长度为32个字
2. refId 关联数据编号（数字类型）
3. content Json数据内容（必传）

如果要修改某一条 Json 记录，则需要再传一个参数 （id） ，代表你要修改的记录ID

### 读取设置的 JSON 数据列表

```js
Apifm.jsonList([Map<String, String> params])
```

支持以下参数：

1. page 读取第几页数据，不传该参数默认为1；
2. pageSize 每页读取几条数据，不传该参数默认取50；
3. type 只读取该类型的Json记录；
4. refId 只读取该数据的所有Json记录；

### 删除 JSON 数据

```js
Apifm.jsonDelete(int id[, String token])
```

删除指定id的Json记录

## 分布式文件管理

### 上传本地文件

```js
Apifm.uploadFile(String token, File tempFilePath)
```

### 下载远程文件

```js
Apifm.uploadFileFromUrl(String remoteFileUrl, String ext)
```

### 获取文件列表

```js
Apifm.uploadFileList([String path])
```

# 安全中心

## 图形验证码

### 获取验证码

```js
Apifm.graphValidateCodeUrl()
```

该方法会返回两个数据：
1. key 用以生成验证码图片的随机数，这个值请保存，后期校验图形验证码正确性需要提供该值；
2. imageUrl 生成的图形验证码的图片的路径，你直接将该图片地址显示在图形控件上即可；

### 校验输入验证码是否正确

```js
Apifm.graphValidateCodeCheck(key, code)
```
key为上面获取方法的key，必须保持一致，否则一直会显示错误；

code 为用户输入的验证码内容

## 短信验证码

### 获取验证码(发送短信)

```js
Apifm.smsValidateCode(String mobile, [String key, String picCode])
```
短信验证码自动下发到 mobile 对应的手机号码；

当后台设置了发送短信验证码必须开启图形验证码校验时，必须传 key 和 picCode 参数，否则不用传；

key 和 picCode 参数，请查阅图形验证码使用说明

### 校验输入验证码是否正确

```js
Apifm.smsValidateCodeCheck(String mobile, String code)
```
code 为用户手机上收到的验证码

## 邮箱验证码

### 获取验证码(发送邮件)

```js
Apifm.mailValidateCode(String mail)
```

### 校验输入验证码是否正确

```js
Apifm.mailValidateCodeCheck(String mail, String code)
```

# 登录 & 注册

## 用户注册

### 用户名注册

```js
Apifm.registerUsername(Map<String, String> params)
```
最简单的注册模式，只要提供用户名和密码即可完成注册

**示例代码:**
```js
Apifm.registerUsername({
  'username': 'zansan',
  'pwd': '123456',
  'nick': '张三'
})
```

### 邮箱注册

```js
Apifm.registerEmail(Map<String, String> params)
```

### 手机号注册

```js
Apifm.registerMobile(Map<String, String> params)
```

最常用的一种注册方式，输入手机号码，获取短信验证码，回填校验通过后即可完成注册

### QQ互联一键注册

```js
Apifm.registerQQConnect(Map<String, String> params)
```

**QQ互联的一键注册功能，需要以下参数：**

*QQ授权后返回的参数：*

oauthConsumerKey、openid、accessToken

具体请查阅QQ互联的接口文档说明

*可选参数：*

referrer 邀请人，邀请你注册的用户id
postJsonString 注册的扩展信息，Json数据格式

### 微信一键注册

```js
Apifm.registerWX(Map<String, String> params)
```

**微信的一键注册功能，需要以下参数：**

*授权后返回的参数：*

code

*可选参数：*

referrer 邀请人，邀请你注册的用户id
postJsonString 注册的扩展信息，Json数据格式

## 用户登录

### 用户名登录

```js
Apifm.loginUsername(String username, String pwd, String deviceId, String deviceName)
```

**示例代码：**

```js
var res = await Apifm.loginUsername('zansan', '123456', '33010500879931234', 'iphone8 Plus');
int uid = res['data']['uid'];
String token = res['data']['token'];
print('uid: $uid, token is : $token');
```

*deviceId 建议读取手机序列号；*

*deviceName 建议读取手机型号;*


### 邮箱登录

```js
Apifm.loginEmail(String email, String pwd, String deviceId, String deviceName)
```

**示例代码：**

```js
var res = await Apifm.loginEmail('zansan@163.com', '123456', '33010500879931234', 'iphone8 Plus');
int uid = res['data']['uid'];
String token = res['data']['token'];
print('uid: $uid, token is : $token');
```

*deviceId 建议读取手机序列号；*

*deviceName 建议读取手机型号;*

### 手机号码登录

```js
Apifm.loginMobile(String mobile, String pwd, String deviceId, String deviceName)
```

**示例代码：**

```js
var res = await Apifm.loginMobile('13500000000', '123456', '33010500879931234', 'iphone8 Plus');
int uid = res['data']['uid'];
String token = res['data']['token'];
print('uid: $uid, token is : $token');
```

*deviceId 建议读取手机序列号；*

*deviceName 建议读取手机型号;*

### QQ互联一键登录

```js
Apifm.loginQQConnect(String oauthConsumerKey, String openid, String accessToken)
```

登录的3个参数，请查阅QQ互联的接口文档返回值说明

### 微信一键登录

```js
Apifm.loginWX(String code)
```

code 为授权成功后返回的临时凭证

## 检测登录 token 是否有效

```js
Apifm.checkToken(String token)
```

## 重置密码

### 用手机找回密码

```js
Apifm.resetPwdUseMobileCode(String mobile, String pwd, String code)
```

用于忘记密码找回，重置密码时候使用

填写手机号码，系统下发短信验证码，回填正确的验证码后完成新密码的设置

### 用邮箱找回密码

```js
Apifm.resetPwdUseEmailCode(String email, String pwd, String code)
```

用于忘记密码找回，重置密码时候使用

填写邮箱地址，系统下发邮件验证码，回填正确的验证码后完成新密码的设置

## 退出登录

```js
Apifm.loginout(String token)
```

退出后，当前token将立刻失效

# 用户信息

## 绑定手机号码

### 短信验证码认证

```js
Apifm.bindMobileSms(String token, String mobile, String code, [String pwd])
```

请结合本文档中的短信验证码安全认证相关方法实现该功能

pwd 为可选参数，如果传了该参数，当前的登录密码将会被重置成传入的新密码

## 设置用户名

```js
Apifm.bindUsername(String token, String username, [String pwd])
```

设置用户名后，将可使用该用户名进行登录；用户名在系统中是唯一的；

pwd 为可选参数，如果传了该参数，当前的登录密码将会被重置成传入的新密码

## 设置邮箱地址

```js
Apifm.bindEmail(String token, String email, String code, [String pwd])
```

通过邮箱验证码校验后，绑定用户的邮箱地址

## 绑定QQ便于后期QQ互联一键登录

```js
Apifm.bindQQConnectOpenid(String token, String oauthConsumerKey, String openid, String accessToken)
```

token 为当前用户的登录token；

剩下3个参数，请查看QQ互联组件的接口文档

## 绑定微信一键登录

```js
Apifm.bindWXOpenid(token, code)
```

手机号码、用户名等方式注册的用户，通过该方法绑定微信，后期将可以使用微信一键登录

code 为用户授权后返回的临时凭证

## 获取用户信息

```js
Apifm.userDetail(String token)
```

base 数据存放了用户的基础信息；

idcard 数据存放了用户的实名认证信息[如果用户有通过实名认证的话]

ext 数据存放了用户的扩展属性

## 修改用户资料

```js
Apifm.modifyUserInfo(Map<String, String> params)
```

## 实名认证

```js
Apifm.idcardCheck(String token, String name, String idCardNo)
```

身份证实名认证方法，校验姓名和身份证号码是否匹配

name 为真实姓名；idCardNo 为身份证号码

## 会员体系

### 获取所有的会员等级

```js
Apifm.userLevelList(Map<String, String> params)
```

读取后台设置的所有的会员等级；具体参数请查阅接口文档

### 查看会员等级详情

```js
Apifm.userLevelDetail(int levelId)
```

levelId 为会员等级的id

### 会员等级收费列表

```js
Apifm.userLevelPrices(int levelId)
```

levelId 为会员等级的id，该方法可获得指定的某一个会员等级（比如：钻石会员）的收费列表

*比如：免费使用7天、30元一个月、70元买一个季度、200元买一年*

用户根据自己的需要，使用下面的方法购买会员，购买后，当前用户立即现有对应的会员等级，直到有效期截止

### 购买会员

```js
Apifm.userLevelBuy(String token, int priceId, [bool isAutoRenew, String remark])
```

priceId 为上面获取的收费列表的id

isAutoRenew = true / false ；用来标识会员到期后是否自动续费，开通自动续费后将会在到期日自动用可用余额完成续费

remark 为购买时候提交的备注信息

### 获取我的购买 / 续费记录

```js
Apifm.userLevelBuyLogs(Map<String, String> params)
```

## 收货地址管理

### 获取所有的收货地址

```js
Apifm.queryAddress(String token)
```

### 添加收货地址

```js
Apifm.addAddress(Map<String, String> params)
```

### 更新收货地址

```js
Apifm.updateAddress(Map<String, String> params)
```

### 获取默认的地址

```js
Apifm.defaultAddress(String token)
```

### 读取地址详细

```js
Apifm.addressDetail(String token, int id)
```

### 删除收货地址

```js
Apifm.deleteAddress(String token, int id)
```

# CMS模块

## 分类管理

### 获取所有分类

```js
Apifm.cmsCategories()
```

### 获取分类详情

```js
Apifm.cmsCategoryDetail(int id)
```

## 文章管理

### 文章列表

```js
Apifm.cmsArticles(Map<String, String> params)
```

### 文章详情

```js
Apifm.cmsArticleDetail(int id)
```

### 文章点赞/踩

```js
Apifm.cmsArticleUseless(Map<String, String> params)
```

### 文章点赞/踩记录

```js
Apifm.cmsArticleUsefulLogs(Map<String, String> params)
```

### 获取该文章的上一篇/下一篇文章信息

```js
Apifm.cmsArticlePreNext(int id)
```

### 文章投稿(用户发布文章)

```js
Apifm.cmsArticleCreate(Map<String, String> params)
```

### 删除自己发布的文章

```js
Apifm.cmsArticleDelete(String token, int id)
```

## 单页信息(关于我们/联系我们/...)

```js
Apifm.cmsPage(String key)
```

## 获取文章标签列表(用于展示类似“标签云”)

```js
Apifm.cmsTags()
```

## 留言 & 反馈

### 提交留言反馈

```js
Apifm.addComment(Map<String, String> params)
```

### 读取留言 & 评论列表

```js
Apifm.commentList(Map<String, String> params)
```

# 商城模块

## 门店管理

### 读取所有的门店列表

```js
Apifm.fetchShops(Map<String, String> params)
```

支持根据当前用户所在地进行从近到远排序展示

**接口返回示例：**

```json
{
  "code": 0,
  "data": [
    {
      "cityId": "150200000000",
      "dateAdd": "2019-07-18 17:45:26",
      "dateUpdate": "2019-07-29 09:37:19",
      "districtId": "150205000000",
      "id": 4963,
      "latitude": 39.916527,
      "linkPhone": "11",
      "longitude": 116.397128,
      "name": "111",
      "numberGoodReputation": 0,
      "numberOrder": 0,
      "paixu": 0,
      "provinceId": "150000000000",
      "status": 0,
      "statusStr": "正常",
      "userId": 2
    }
  ],
  "msg": "success"
}
```

### 门店详情

```js
Apifm.shopSubdetail(int id)
```

id 参数为门店列表返回数据中的 id 字段

该方法可以读取到门店后台设置的扩展属性信息

**接口返回示例：**

```json
{
  "code": 0,
  "data": {
    "extJson": {
      "证书编号": "",
      "3C产品型号": "",
      "电压": "",
      "电源方式": ""
    },
    "info": {
      "activity": "",
      "address": "杭州市拱墅区登云路和赵伍路交叉口",
      "characteristic": "量贩式水果超市",
      "cityId": "330100000000",
      "dateAdd": "2017-03-20 20:27:36",
      "dateUpdate": "2019-03-05 12:27:25",
      "districtId": "330105000000",
      "expressType": "",
      "id": 1,
      "introduce": "简单介绍一下吧",
      "latitude": 30.307559,
      "linkPhone": "1234",
      "longitude": 120.130023,
      "name": "鲜丰水果登云路店",
      "number": "",
      "numberGoodReputation": 0,
      "numberOrder": 0,
      "paixu": 0,
      "pic": "https://cdn.it120.cc/apifactory/2017/03/20/0f4b625100de82467f3e193d1bf3577d.png",
      "provinceId": "330000000000",
      "status": 0,
      "statusStr": "正常",
      "type": "",
      "userId": 2
    }
  },
  "msg": "success"
}
```

## 商品分类

```js
Apifm.goodsCategory()
```

读取后台设置的所有分类数据，分类之间的上下级关系请使用 level 和 pid 进行管理

level = 1 表示 1级类目；2 表示 2级类目，以此类推

pid 代表该类目的上级类目ID（一级类目的 pid = 0）

*分类的目录树，可以根据上述2个字段，采用 js 在本地实现*

**接口返回示例：**

```json
{
  "code": 0,
  "data": [
    {
      "dateAdd": "2017-09-12 11:07:32",
      "dateUpdate": "2019-04-10 11:24:32",
      "icon": "https://cdn.it120.cc/apifactory/2019/04/09/f89753a227d26a3fe9ccc6f975857bb6.png",
      "id": 1872,
      "isUse": true,
      "key": "1",
      "level": 1,
      "name": "上装",
      "paixu": 0,
      "pid": 0,
      "type": "",
      "userId": 951
    }
  ],
  "msg": "success"
}
```

## 商品管理

### 获取商品列表

```js
Apifm.goods([Map<String, String> params])
```

读取所有的商品数据，以分页的形式展示，支持按照多种方式进行排序

**接口返回示例：**

```json
{
  "code": 0,
  "data": [
    {
      "categoryId": 1875,
      "characteristic": "享受vip尊享服务，使用专业版后台，功能更强，体验更好",
      "commission": 0,
      "commissionType": 0,
      "dateAdd": "2019-03-19 09:51:08",
      "dateUpdate": "2019-08-14 09:49:34",
      "gotScore": 0,
      "gotScoreType": 0,
      "id": 124305,
      "kanjia": true,
      "kanjiaPrice": 49,
      "limitation": false,
      "logisticsId": 0,
      "miaosha": false,
      "minPrice": 198,
      "minScore": 0,
      "name": "api工厂1年vip会员",
      "numberFav": 0,
      "numberGoodReputation": 1,
      "numberOrders": 1,
      "numberSells": 1,
      "originalPrice": 198,
      "paixu": 0,
      "pic": "https://cdn.it120.cc/apifactory/2019/03/19/6828c1ced4a74e11b532c8cbd864245a.png",
      "pingtuan": false,
      "pingtuanPrice": 0,
      "recommendStatus": 1,
      "recommendStatusStr": "推荐",
      "shopId": 0,
      "status": 0,
      "statusStr": "上架",
      "stores": 9999998,
      "userId": 951,
      "views": 15955,
      "weight": 0
    }
  ],
  "msg": "success"
}
```

### 获取商品详情信息

```js
Apifm.goodsDetail(int id)
```

id 参数为上面商品列表方法返回数据里的 id 字段

访问该方法会增加商品的浏览量

该方法获取商品基础信息、商品图文详细介绍、商品图片、可选的规格尺寸、所属分类、快递物流设置信息、商品扩展属性

**接口返回示例：**

```json
{
  "code": 0,
  "data": {
    "logistics": {
      "isFree": true,
      "feeType": 0,
      "feeTypeStr": "按件数",
      "details": [
        {
          "addAmount": 0,
          "addNumber": 1,
          "firstAmount": 8,
          "firstNumber": 100,
          "type": 0,
          "userId": 951
        }
      ]
    },
    "extJson": {},
    "category": {
      "dateAdd": "2017-09-17 19:55:09",
      "dateUpdate": "2019-04-10 11:27:49",
      "icon": "https://cdn.it120.cc/apifactory/2019/04/09/9a7356187fce687ce568ba7381685299.png",
      "id": 2054,
      "isUse": true,
      "key": "8",
      "name": "秒杀",
      "paixu": 0,
      "pid": 0,
      "type": "",
      "userId": 951
    },
    "pics": [
      {
        "goodsId": 122843,
        "id": 899846,
        "pic": "https://cdn.it120.cc/apifactory/2019/03/07/133eb6294e3853ebe4eb8551359a26dc.png",
        "userId": 951
      }
    ],
    "content": "<table class=\"table table-bordered table-hover\">\n<thead>\n<tr>\n<th colspan=\"2\">主体&nbsp;</th>\n</tr>\n</thead>\n<tbody>\n<tr>\n<th>名称</th>\n<td>WiFi无线打印机</td>\n</tr>\n<tr>\n<th>型号</th>\n<td>FP-V58W(58mm、不带切刀)</td>\n</tr>\n<tr>\n<th>传输方式</th>\n<td>WiFi网络</td>\n</tr>\n<tr>\n<th>下单方式</th>\n<td>Internet网络接口/手机应用</td>\n</tr>\n<tr>\n<th>集成方式</th>\n<td>API/驱动集成</td>\n</tr>\n<tr>\n<th>监控管理</th>\n<td>在线、缺纸状态查询</td>\n</tr>\n</tbody>\n</table>\n<table class=\"table table-bordered table-hover\">\n<thead>\n<tr>\n<th colspan=\"2\">打印&nbsp;</th>\n</tr>\n</thead>\n<tbody>\n<tr>\n<th>打印方式</th>\n<td>直接行式热敏</td>\n</tr>\n<tr>\n<th>自动切刀</th>\n<td>否</td>\n</tr>\n<tr>\n<th>图形</th>\n<td>支持二维码,条码,LOGO打印</td>\n</tr>\n<tr>\n<th>打印宽度</th>\n<td>58毫米</td>\n</tr>\n<tr>\n<th>点密度</th>\n<td>384点/行（203&times;203dpi）</td>\n</tr>\n<tr>\n<th>打印速度</th>\n<td>120毫米/秒</td>\n</tr>\n<tr>\n<th>打印纸</th>\n<td>57.5 &plusmn; 0.5毫米</td>\n</tr>\n<tr>\n<th>行间距</th>\n<td>3.75毫米（可用命令调整行间距）</td>\n</tr>\n<tr>\n<th>列数</th>\n<td>58mm纸：Font A 32列/Font B 42列/简繁体16列</td>\n</tr>\n<tr>\n<th>字符大小</th>\n<td>ANK字符，Font A 1.5&times;3.0mm（12&times;24点）Font B 1.1&times;2.1mm（9&times;17点）简繁体 3.0&times;3.0mm（24&times;24点）</td>\n</tr>\n</tbody>\n</table>\n<table class=\"table table-bordered table-hover\">\n<thead>\n<tr>\n<th colspan=\"2\">物理属性&nbsp;</th>\n</tr>\n</thead>\n<tbody>\n<tr>\n<th>输入缓冲</th>\n<td>32K Bytes</td>\n</tr>\n<tr>\n<th>NV Flash</th>\n<td>64 K Bytes</td>\n</tr>\n<tr>\n<th>电源</th>\n<td>输入AC 110V/220V，50～60Hz</td>\n</tr>\n<tr>\n<th>电源适配器</th>\n<td>DC12V/2.6A</td>\n</tr>\n<tr>\n<th>重量</th>\n<td>0.66千克</td>\n</tr>\n<tr>\n<th>外观尺寸</th>\n<td>160&times;120&times;100毫米（长&times;宽&times;高）</td>\n</tr>\n<tr>\n<th>工作环境</th>\n<td>温度：0～45℃ 湿度：10～80%</td>\n</tr>\n<tr>\n<th>存储环境</th>\n<td>温度：-10～60℃ 湿度：10～90%（不结露）</td>\n</tr>\n<tr>\n<th>使用寿命</th>\n<td>50公里</td>\n</tr>\n<tr>\n<th>产品认证</th>\n<td>3C</td>\n</tr>\n<tr>\n<th>质量标准</th>\n<td>ISO9001</td>\n</tr>\n</tbody>\n</table>",
    "basicInfo": {
      "categoryId": 2054,
      "commission": 0,
      "commissionType": 0,
      "dateAdd": "2019-03-11 13:02:39",
      "dateUpdate": "2019-08-14 09:17:23",
      "gotScore": 0,
      "gotScoreType": 0,
      "id": 122843,
      "kanjia": false,
      "kanjiaPrice": 0,
      "limitation": false,
      "logisticsId": 386,
      "miaosha": false,
      "minPrice": 600,
      "minScore": 0,
      "name": "WIFI 58mm 热敏打印机工厂定制版",
      "numberFav": 0,
      "numberGoodReputation": 8,
      "numberOrders": 894,
      "numberSells": 872,
      "originalPrice": 800,
      "paixu": 0,
      "pic": "https://cdn.it120.cc/apifactory/2019/03/07/133eb6294e3853ebe4eb8551359a26dc.png",
      "pingtuan": false,
      "pingtuanPrice": 0,
      "recommendStatus": 1,
      "recommendStatusStr": "推荐",
      "shopId": 0,
      "status": 0,
      "statusStr": "上架",
      "stores": 9999984,
      "tags": "打印机",
      "userId": 951,
      "views": 18040,
      "weight": 0
    }
  },
  "msg": "success"
}
```

### 获取商品的限购设置

```js
Apifm.goodsLimitations(int goodsId, [int priceId])
```

如果商品（列表、详情）信息中 **limitation** 字段为 **true**，说明该商品开启了限购，只有设置中的会员等级用户才可以在约定时间内购买不超过指定数量

该方法接收2个参数，**goodsId** 参数是必填的，代表商品id； **priceId** 参数非必填，只有在用户购买时候选择了指定的规格尺寸时候才需要传

你可以根据当前登录用户的会员等级，在商品详情页面进行相应的交互展示

**接口返回示例：**

```json
{
  "code": 0,
  "data": [
    {
      "buyNumbers": 22,
      "duration": 11,
      "goodsId": 145565,
      "id": 6,
      "priceId": 1279085,
      "unit": 0,
      "unitStr": "自然日",
      "userId": 2,
      "userLevelId": 1,
      "userLevelName": "黄金会员"
    },
    {
      "buyNumbers": 3,
      "duration": 1,
      "goodsId": 145565,
      "id": 2,
      "priceId": 1279084,
      "unit": 2,
      "unitStr": "自然年",
      "userId": 2,
      "userLevelId": 1,
      "userLevelName": "黄金会员"
    },
    {
      "buyNumbers": 4,
      "duration": 3,
      "goodsId": 145565,
      "id": 1,
      "priceId": 1279084,
      "unit": 0,
      "unitStr": "自然日",
      "userId": 2,
      "userLevelId": 0,
      "userLevelName": "无分组用户"
    }
  ],
  "msg": "success"
}
```

### 获取商品价格「一般用在选择不同规格尺寸后需要实时显示售价」

```js
Apifm.goodsPrice(int goodsId, String propertyChildIds)
```

goodsId 为商品id

**propertyChildIds** 参数为用户选择的规格尺寸数据，多个规格尺寸数据用因为逗号分隔，该参数的格式为： 规格id:子属性id，比如： 4:15,2:10 （分别对应了 颜色:红色，内存:256G）

**接口返回示例：**

```json
{
  "code": 0,
  "data": {
    "goodsId": 139421,
    "id": 1330668,
    "originalPrice": 566,
    "pingtuanPrice": 0,
    "price": 123,
    "propertyChildIds": "1:1,",
    "propertyChildNames": "颜色:薄荷绿,",
    "score": 0,
    "stores": 99999,
    "userId": 2
  },
  "msg": "success"
}
```

### 获取商品的每日价格&每日库存「适用酒店预订、票务预订类」

```js
Apifm.goodsPriceDaily(int goodsId, int priceId)
```

goodsId 为商品id

priceId 为选择的商品规格尺寸记录id，无规格尺寸的商品，无需传该参数

**接口返回示例：**

```json
{
  "code": 0,
  "data": [
    {
      "day": "2019-08-14",
      "goodsId": 139421,
      "id": 255,
      "price": 1,
      "stores": 1,
      "userId": 2
    },
    {
      "day": "2019-08-15",
      "goodsId": 139421,
      "id": 256,
      "price": 1,
      "stores": 1,
      "userId": 2
    }
  ],
  "msg": "success"
}
```

### 计算物流/快递模板费用计算方法

```js
Apifm.goodsPriceFreight(Map<String, String> params)
```

提供快递地址，本方法可计算出本次会计的计费方式

*比如： a 件（重量）内 x 元，之后每增加 b 件（重量）额外加收 y 元*

**接口返回示例：**

```json
{
  "code": 0,
  "data": {
    "firstNumber": 1,
    "addAmount": 1,
    "firstAmount": 1,
    "addNumber": 1
  },
  "msg": "success"
}
```

### 拉取当前会员可以显示的折扣信息

```js
Apifm.goodsRebate(String token, int goodsId)
```

token 为当前登录用户的登录 token

goodsId 为商品id

**接口返回示例：**

```json
{
  "code": 0,
  "data": 10,
  "msg": "success"
}
```
*上面的 10 意思就是 10折，也就是不打折的意思；*

### 获取商品的评价

```js
Apifm.goodsReputation(Map<String, String> params)
```

读取当前商品用户的所有评价数据

**接口返回示例：**

```json
{
  "code": 0,
  "data": [
    {
      "goods": {
        "amount": 600,
        "dateReputation": "2019-07-23 14:20:00",
        "goodReputation": 2,
        "goodReputationRemark": "系统默认好评",
        "goodReputationStr": "好评",
        "goodsId": 122843,
        "goodsName": "WIFI 58mm 热敏打印机工厂定制版",
        "id": 372497,
        "number": 1,
        "orderId": 325214,
        "pic": "https://cdn.it120.cc/apifactory/2019/03/07/133eb6294e3853ebe4eb8551359a26dc.png",
        "score": 0,
        "uid": 762217,
        "userId": 951
      },
      "user": {
        "avatarUrl": "https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLJpYuZ0hOPlEzOXUpibibAtELrHnoRNib5tiaicpb1ZfZT8FHWcJulH189UhmaxicKKia22LXnwt8ibLYCVw/132",
        "city": "",
        "dateAdd": "2019-03-17 10:12:22",
        "dateLogin": "2019-07-09 14:40:09",
        "id": 762217,
        "ipAdd": "118.114.6.203",
        "ipLogin": "171.209.166.143",
        "isIdcardCheck": false,
        "isSeller": false,
        "levelRenew": false,
        "mobile": "13688059703",
        "nick": "阳大锤",
        "province": "Dublin",
        "source": 0,
        "sourceStr": "小程序",
        "status": 0,
        "statusStr": "默认"
      }
    }
  ],
  "msg": "success"
}
```

## 商品收藏

### 收藏某个商品

```js
Apifm.goodsFavPut(String token, int goodsId)
```

**接口返回示例：**

```json
{
  "code": 0,
  "msg": "success"
}
```

### 检测当前商品是否已被收藏

```js
Apifm.goodsFavCheck(String token, int goodsId)
```

**接口返回示例：**

*已收藏*
```json
{
  "code": 0,
  "data": "已收藏"
}
```

*未收藏*
```json
{
  "code": -1,
  "data": "未收藏"
}
```

### 获取收藏的商品

```js
Apifm.goodsFavList(Map<String, String> params)
```

**接口返回示例：**

```json
{
  "code": 0,
  "data": [
    {
      "dateAdd": "2019-08-14 10:53:44",
      "dateUpdate": "2019-08-14 11:01:02",
      "goodsId": 139421,
      "goodsName": "111",
      "id": 12537,
      "pic": "https://cdn.it120.cc/apifactory/2019/05/10/fa52e312-c8a9-4558-8280-7d67224b6f67.png"
    }
  ],
  "msg": "success"
}
```

### 删除收藏的某个商品

```js
Apifm.goodsFavDelete(String token, int id, int goodsId)
```

id 参数为收藏列表数据中的记录id

goodsId 为商品id

以上2个参数至少要填写1个

**接口返回示例：**

```json
{
  "code": 0,
  "msg": "success"
}
```

## 订单管理

### 创建订单

```js
Apifm.orderCreate(Map<String, String> params)
```

**主要参数说明：**

1. calculate
   
   *传 true 可以实现预下单，预下单不会真正下单，而是会返回是否允许下单，以及费用[货款、运费]金额的计算*

2. deductionScore
   
   *这个参数指定本次订单使用多少积分进行抵扣；你需要先通过积分抵扣规则、读取资产2个方法自行计算好需要抵扣的积分，订单生产后会自动计算剩余应该支付的金额*

### 关闭订单

```js
Apifm.orderClose(String token, int orderId)
```

### 删除订单

```js
Apifm.orderDelete(String token, int orderId)
```

用户删除订单，只是用户自己看不到，管理员在后台还是可以看到该订单的

### 支付订单[使用余额]

```js
Apifm.orderPay(String token, int orderId)
```

使用用户的钱包余额完成订单的支付

### 确认收货

```js
Apifm.orderDelivery(String token, int orderId)
```

管理员针对下单进行发货操作，用户在确认收到包裹检查无误后，通过该方法来确认本次订单的收货

确认收货后，订单将进入评价阶段，用户可实事求是的针对本次购物体验进行评价、买家秀截图等等

### 订单核销

```js
Apifm.orderHX(String hxNumber)
```

hxNumber 为核销码，所以请妥善保管，商家依据核销码进行核销

订单默认不会生成核销码，如果需要开启核销功能，请在创建订单方法参数中增加 isCanHx=true 

核销后，订单即交易成功，转为待评价状态


### 订单汇总统计

```js
Apifm.orderStatistics(String token)
```

订单统计，用以显示订单统计或者是订单类型小红点，该方法将会返回一下几个数据：

1. count_id_no_pay: 待支付订单数量
2. count_id_no_transfer: 已支付等待商家发货订单数量
3. count_id_no_confirm: 商家已发货，等待确认收货订单数量
4. count_id_no_reputation: 交易成功，等待评价的订单数量
5. count_id_success: 交易成功，且已评价的订单数量
6. count_id_close: 关闭的订单数量

### 获取所有订单

```js
Apifm.orderList(Map<String, String> params)
```

### 订单详情

```js
Apifm.orderDetail(String token, int id)
```

读取订单详情数据：订单信息、购物清单、订单日志记录、物流跟踪信息、库存明细、扩展属性

根据你自己的需要进行UI设计及合理展示

### 评价接口

```js
Apifm.orderReputation(Map<String, String> params)
```

订单评价，进行 好、中、差评；留言备注；截图买家秀

具体参数请查阅接口文档说明

### 申请退换货[售后]

```js
Apifm.refundApply(Map<String, String> params)
```

用户维权通道，通过该方法实现订单的退款、退货、换货等售后处理

### 申请退换货详情

```js
Apifm.refundApplyDetail(String token, int orderId)
```

### 撤销退换货申请

```js
Apifm.refundApplyCancel(String token, int orderId)
```

### 拉取某订单的所有售后记录

```js
Apifm.orderRefunds(String token, int orderId)
```

一个订单允许多次退换货，该方法可以拉取到所有的售后记录

## 虚拟物品交易[知识付费]

### 商品列表

```js
Apifm.virtualTraderList(Map<String, String> params)
```

建议该功能结合 CMS 系统一起使用，这样可以实现更好的购买前的信息展示，给用户足够的参考继而考虑购买

### 商品详情

```js
Apifm.virtualTraderDetail(String token, int id)
```

读取商品详情数据

购买后，才会返回付费属性、付费详情说明

所以你可以使用该功能来实现购后阅读、购后播放的应用

### 购买商品

```js
Apifm.virtualTraderBuy(String token, int id)
```

使用用户余额购买知识付费商品

如何使用在线支付，请查看在线支付功能中 nextAction 的使用说明

### 我的购买记录

```js
Apifm.virtualTraderMyBuyLogs(Map<String, String> params)
```

我购买过的所有知识付费记录

# 根据视频编号读取视频详情

```js
Apifm.videoDetail(String videoId)
```

# 营销工具

## 优惠券管理

### 获取系统所有优惠券列表

```js
Apifm.coupons(Map<String, String> params)
```

### 查看优惠券详情

```js
Apifm.couponDetail(int id)
```

### 领取优惠券

```js
Apifm.fetchCoupons(Map<String, String> params)
```

### 我的所有优惠券

```js
Apifm.myCoupons(Map<String, String> params)
```

### 赠送优惠券给他人

```js
Apifm.sendCoupons(Map<String, String> params)
```

### 兑换优惠券

```js
Apifm.exchangeCoupons(String token, String number, String pwd)
```

使用动态口令兑换优惠券，兑换后卡密失效，请妥善保管



## 商品砍价

### 获取商品砍价设置

```js
Apifm.kanjiaSet(int goodsId)
```

读取某个商品的砍价设置信息：总份数、底价、每次能砍掉的（随机）金额以及开始结束时间

具体可前往后台砍价设置界面了解设置栏目

**接口返回示例：**

```json
{
  "code": 0,
  "data": {
    "dateAdd": "2019-08-14 15:35:29",
    "dateEnd": "2019-08-31 15:35:24",
    "helpPriceMax": 56,
    "helpPriceMin": 12,
    "id": 1067,
    "minPrice": 8,
    "number": 999,
    "numberBuy": 0,
    "originalPrice": 888,
    "status": 0,
    "statusStr": "正常"
  },
  "msg": "success"
}
```

**上面示例接口返回数据中的 id 非常关键，下面诸多砍价方法中使用到的 kjid 参数就是这个值 1067**

**为什么下面的砍价方法要以 kjid 为参数，而不用商品id为参数呢？**

*那是因为，同一个商品可能会在后台发布多个砍价项目，有的底价低但是砍价难度大需要更多的人帮忙；有的底价高但是比较容易砍到底价；甚至会根据开始/结束时间不同同一个商品设置好几场同时进行砍价*

### 发起[创建]砍价，继而邀请好友来帮自己砍到底价

```js
Apifm.kanjiaJoin(String token, int kjid)
```

每个用户针对同一个 kjid 只能参与一次，多次调用本方法将返回上一次砍价的信息

如果用户对上次砍价结果不太满意，可以调用下面的 **clear** 方法，清空上一次砍价记录，重新发起砍价

**接口返回示例：**

```json
{
  "code": 0,
  "data": {
    "curPrice": 888,
    "goodsId": 139421,
    "kjId": 1067,
    "minPrice": 8,
    "uid": 979527
  },
  "msg": "success"
}
```

### 我发起[创建]的砍价详情

```js
Apifm.kanjiaMyJoinInfo(String token, int kjid)
```

查看我发起的砍价目前的进展[进度]情况

也可以作为判断是否有参与砍价的依据

**接口返回示例：**

```json
{
  "code": 0,
  "data": {
    "curPrice": 888,
    "dateAdd": "2019-08-14 15:46:22",
    "dateUpdate": "2019-08-14 15:46:22",
    "goodsId": 139421,
    "helpNumber": 0,
    "kjId": 1067,
    "minPrice": 8,
    "status": 0,
    "statusStr": "进行中",
    "uid": 979527
  },
  "msg": "success"
}
```

### 放弃上一次砍价

```js
Apifm.kanjiaClear(String token, int kjid)
```

因为每个用户针对同一个  kjid  只能参与一次，如果用户希望再次发起砍价，则必须要先放弃前一次砍价才能进行

本次操作后，你针对当前 kjid 将查不到砍价记录，砍价数据清空，你可重新调用 **kanjiaJoin** 方法创建一个新的砍价

### 砍价详情

```js
Apifm.kanjiaDetail(int kjid, int joiner)
```

joiner 参数为发起[创建]砍价的那个用户的 uid，在上述例子中，joiner = 979527

可查看某人创建的砍价的进度情况，看看多少人参与、目前的价格砍到多少了

**接口返回示例：**

```json
{
  "code": 0,
  "data": {
    "kanjiaInfo": {
      "curPrice": 888,
      "dateAdd": "2019-08-14 15:46:22",
      "dateUpdate": "2019-08-14 15:46:22",
      "goodsId": 139421,
      "helpNumber": 0,
      "kjId": 1067,
      "minPrice": 8,
      "status": 0,
      "statusStr": "进行中",
      "uid": 979527
    },
    "joiner": {
      "nick": "gooking",
      "avatarUrl": "https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eriagnYJN3GtiaruhqTFkdpYHtQicwLiaFrwbuSInE7HN7UGw2icxPm3jibWrX9ezXROl7Gn2bHGic4nJbsw/132"
    },
    "helps": []
  },
  "msg": "success"
}
```

### 帮好友砍价

```js
Apifm.kanjiaHelp(String token, int kjid, int joiner, [String remark])
```

帮助好友砍价，调用该方法后，将使得好友的当前价格越来越接近底价

joiner 参数为发起[创建]砍价的那个用户的 uid，在上述例子中，joiner = 979527

被砍到底价、或者截止时间到期后，你将无法再帮助好友进行砍价

**接口返回示例：**

```json
{
  "code": 0,
  "data": {
    "cutPrice": 26.39,
    "goodsId": 139421,
    "remark": "记得请我吃饭",
    "uid": 979527
  },
  "msg": "success"
}
```

*每个用户只能帮忙砍价一次，多次帮忙砍价将返回之前砍价的数据*

### 查询我帮好友砍掉的金额

```js
Apifm.kanjiaHelpDetail(String token, int kjid, int joiner)
```

查询针对当前 kjid ，我帮忙砍掉的金额

joiner 参数为发起[创建]砍价的那个用户的 uid，在上述例子中，joiner = 979527

**接口返回示例：**

```json
{
  "code": 0,
  "data": {
    "cutPrice": 26.39,
    "dateAdd": "2019-08-14 16:31:45",
    "goodsId": 139421,
    "remark": "记得请我吃饭",
    "uid": 979527
  },
  "msg": "success"
}
```

## 拼团功能

### 获取某一个商品的拼团配置

```js
Apifm.pingtuanSet(int goodsId)
```

读取团购的几个重要设置：几人成团、超时时间、超时未成团后如何退款等等

**接口返回示例：**

```json
{
  "code": 0,
  "data": {
    "dateAdd": "2018-04-27 17:39:49",
    "dateEnd": "2028-05-12 17:39:59",
    "id": 2,
    "numberDoing": 1,
    "numberPersion": 2,
    "numberSucccess": 0,
    "refundType": 0,
    "refundTypeStr": "用户钱包余额",
    "status": 0,
    "statusStr": "正常",
    "timeoutHours": 24
  },
  "msg": "success"
}
```

### 批量获取一组商品的拼团配置

```js
Apifm.pingtuanSets(goodsIds)
```

针对上面方法的补充，在有必要的场合可以一次性的读取多个商品的团购配置信息

goodsIds 为多个商品id，用英文逗号分隔: 1,2,3,4,5

**接口返回示例：**

```json
{
  "code": 0,
  "data": [
    {
      "dateAdd": "2019-08-15 07:57:19",
      "dateEnd": "2029-08-15 07:57:16",
      "goodsId": 145565,
      "id": 1569,
      "numberDoing": 0,
      "numberPersion": 2,
      "numberSucccess": 0,
      "refundType": 0,
      "refundTypeStr": "用户钱包余额",
      "status": 0,
      "statusStr": "正常",
      "timeoutHours": 24
    }
  ],
  "msg": "success"
}
```

### 开团[我发起一个团购，我是团长，让别人来参加]

```js
Apifm.pingtuanOpen(String token, int goodsId)
```

开团成功后，团长要先自己下单并且完成支付，团才算是真正开启成功！

仅开团，团长自己不支付，后台可以看见开团信息，但是其他用户看不到该团购，团长完成支付后才可以看见并参与

**接口返回示例：**

```json
{
  "code": 0,
  "data": {
    "dateEnd": "2019-08-16 07:45:34",
    "goodsId": 139421,
    "id": 7380,
    "pingtuanId": 2
  },
  "msg": "success"
}
```

**上面的 id 非常重要， 7380 代表的是针对 pingtuanId=2 这个团购设置下的具体某一个团购！针对后台配置的某一个团购设置(pingtuanId=2)，可以有N个进行中的拼团，我们暂且把这个 id=7380叫做团号吧~**

*一定要明确区分，拼团ID 和 团号的区别，也就是上面 pingtuanId 和 id 的区别，否则下面的方法使用过程中恒容易出错！*

### 获取某个商品当前进行中的所有拼团

```js
Apifm.pingtuanList(Map<String, String> params)
```

拉取某个商品当前所有的开团列表数据，用于展示当前商品的多组进行中/已完成的团购数据，你也可以选择其中一个团购加入购买以便可以早点成团

当然你也可以自己新开一个团购队列，让别人来参与，这个时候本方法将能多返回你刚刚开的团的信息 **团长必须完成支付后才能在这里显示**

### 获取某个团购的参与用户列表

```js
Apifm.pingtuanJoinUsers(int tuanId)
```

tuanId 为上述例子中的团号，也就是 7380，不是 2 

### 读取我参与过的所有团购记录

```js
Apifm.pingtuanMyJoined(Map<String, String> params)
```

用以展示在个人中心 --> 我参与的所有团购，可分页

## 三级分销

### 申请成为分销商

```js
Apifm.fxApply(String token, String name, String mobile)
```

### 申请进度查询

```js
Apifm.fxApplyProgress(String token)
```

### 团队管理

```js
Apifm.fxMembers(Map<String, String> params)
```

查看你的1级/2级团队列表

*你的一级团队完成销售，你将可获得二级返佣佣金奖励；你的二级团队完成销售，你将可获得三级返佣佣金奖励*

### 佣金记录[返佣明细]

```js
Apifm.fxCommisionLog(Map<String, String> params)
```

详细记录你的每一笔返佣佣金收录记录

# 积分模块

## 读取订单积分抵扣规则

```js
Apifm.scoreDeductionRules()
```

通过该方法读取后台设置的积分抵扣规则

## 读取积分赠送规则

```js
Apifm.scoreRules([Map<String, String> params])
```

## 签到送积分

### 签到规则

```js
Apifm.scoreSignRules()
```

读取后台设置的签到送积分规则：

*签到一次送多少积分；连续签到x天赠送y积分；*

### 签到

```js
Apifm.scoreSign(String token)
```

当前登录用户进行签到，token为调用登录接口登录成功后返回的登录凭证

### 读取今日签到信息

```js
Apifm.scoreTodaySignedInfo(String token)
```

判断今天有没有签到

错误码返回 700 表示未签到；错误码返回 0 表示已经签到

### 签到记录

```js
Apifm.scoreSignLogs(Map<String, String> params)
```

读取历史签到记录

## 使用积分券兑换积分

```js
Apifm.scoreExchange(String token, String number)
```

使用积分券的券号，兑换积分

## 积分明细

```js
Apifm.scoreLogs(Map<String, String> params)
```

用户的每一次积分变动，都会详细记录积分明细

# 资金 / 财务 相关

## 获取资产信息（余额、可用积分）

```js
Apifm.userAmount(String token)
```

## 在线支付(充值)

### 获取充值规则（满多少送多少）

```js
Apifm.rechargeSendRules()
```

### 微信支付

```js
Apifm.wxpay(Map<String, String> params)
```

> 调用该方法后，可获得用于发起微信支付的所有数据，请将返回值根据小程序的微信支付文档唤起支付功能即可，参考代码如下：

```js
Apifm.wxpay({
  token: '登录token',
  money: 100,
  payName: '支付测试',
  nextAction: '{"type": 0, "id": 1}'
}).then(function (res) {
  if (res.code == 0) {
    // 小程序代码发起支付
    wx.requestPayment({
      timeStamp: res.data.timeStamp,
      nonceStr: res.data.nonceStr,
      package: 'prepay_id=' + res.data.prepayId,
      signType: 'MD5',
      paySign: res.data.sign,
      fail: function (aaa) {
        wx.showToast({
          title: '支付失败:' + aaa
        })
      },
      success: function () {
        // 提示支付成功
        wx.showToast({
          title: '支付成功'
        })
      }
    })
  }
})
```

> 具体参数请查阅接口文档说明，尤其要注意 **nextAction** 参数的使用

### 支付宝支付(半自动)

```js
Apifm.alipay(Map<String, String> params)`
```

### 充值记录

```js
Apifm.payLogs(Map<String, String> params)
```

## 优惠买单

到店消费后，使用该功能完成现场消费；询问服务员消费金额后，用户自主输入消费金额后完成在线消费；系统自动按照后台设置的优惠买单规则进行满减

### 获取买单优惠

```js
Apifm.payBillDiscounts()
```

读取后台设置的满减设置列表

### 买单

```js
Apifm.payBill(String token, double money)
```

money 参数请传实际的消费金额，系统自动会根据后台设置的满减规则计算实际需要支付的金额的

## 资金流水

```js
Apifm.cashLogs(Map<String, String> params)
```

## 提现管理

### 申请提现

```js
Apifm.withDrawApply(String token, double money)
```

### 提现记录

```js
Apifm.withDrawLogs(Map<String, String> params)
```

### 提现记录详情

```js
Apifm.withDrawDetail(String token, int id)
```

## 发票管理

### 申请发票

```js
Apifm.invoiceApply(Map<String, String> params)
```

### 申请的发票列表

```js
Apifm.invoiceList(Map<String, String> params)
```

### 发票详情

```js
Apifm.invoiceDetail(String token, int id)
```

## 押金管理
### 支付押金

```js
Apifm.payDeposit(Map<String, String> params)
```

### 读取押金列表

```js
Apifm.depositList(Map<String, String> params)
```

### 押金详情

```js
Apifm.depositInfo(String token, int id)
```

### 申请退回押金

```js
Apifm.depositBackApply(String token, int id)
```

# 活动 & 工具

## 分布式系统唯一ID

```js
Apifm.uniqueId([String type])
```

## 手机号段服务

### 归属地查询

```js
Apifm.queryMobileLocation(String mobile)
```

### 读取下一个号段

```js
Apifm.nextMobileSegment(Map<String, String> params)
```

## 抽奖功能

### 抽奖项目详情

```js
Apifm.luckyInfo(int id)
```

### 参与抽奖

```js
Apifm.luckyInfoJoin(Sting token, int id)
```

### 我的抽奖信息

```js
Apifm.luckyInfoJoinMy(Sting token, int id)
```

### 抽奖项目的所有抽奖记录明细

```js
Apifm.luckyInfoJoinLogs(Map<String, String> params)
```

## 预约/报名

### 读取所有的预约/报名项目

```js
Apifm.yuyueItems(Map<String, String> params)
```

拉取后台设置的所有预约/报名项目，小程序端可展示所有的项目、进度等情况

### 项目详情

```js
Apifm.yuyueItemDetail(int id)
```

读取指定 id 的预约/报名项目详情、后台设置的扩展属性

### 进行预约或者在线报名

```js
Apifm.yuyueJoin(Map<String, String> params)
```

**可作为团队/个人直接报名，也可以加入指定的某一个团队进行报名**

参数说明：

**个人/团队报名：**

**yuyueId** 报名项目ID

**teamName** 团队名称[也可以不传]

**remark** 报名备注

**extJsonStr** 报名扩展属性

**加入某个团队：**

**yuyueId** 报名项目ID

**teamId** 团队ID

**remark** 报名备注

**extJsonStr** 报名扩展属性

**成功预约/报名后将会给你返回报名ID，也就是下述方法中使用到的 joinId 参数**

### 支付报名费

```js
Apifm.yuyueJoinPay(String token, int joinId)
```

如果后台设置的预约/报名项目需要支付一定的费用，那么用户需要通过该方法完成报名费的支付才能完成预约/报名

### 更新预约/报名信息

```js
Apifm.yuyueJoinUpdate(String token, int joinId, String extJsonStr)
```

修改预约/报名的扩展信息，必须是非匿名情况下才能使用，否则没法确认修改者用户身份

### 我的报名信息

```js
Apifm.yuyueMyJoinInfo(String token, int joinId)
```

### 我所有的预约记录/报名记录

```js
Apifm.yuyueMyJoinLogs(Map<String, String> params)
```

### 读取某个项目的所有报名团队列表

```js
Apifm.yuyueTeams(Map<String, String> params)
```

### 查看团队详情

```js
Apifm.yuyueTeamDetail(int teamId)
```

上述方法中获取到的团队ID

### 拉取团队成员列表

```js
Apifm.yuyueTeamMembers(Map<String, String> params)
```

### 团队长删除[踢]团队成员

```js
Apifm.yuyueTeamDeleteMember(String token, int joinId)
```

## 投票功能

后台新建投票项目，在该投票项目下可设置多个投票选项，用可根据后台设置的 单选/多选 设置进行投票，最后查看总体投票情况以及投票明细(非匿名的话)

### 投票项目

```js
Apifm.voteItems(Map<String, String> params)
```

读取所有的投票项目，下面的方法均是针对其中某一个投票项目进行参与

### 投票详情

```js
Apifm.voteItemDetail(int id)
```

投票项目的详细数据

拉取当前投票项目的所有投票选项

同时也将返回后台设置的当前投票项目的扩展属性数据

### 我的投票

```js
Apifm.myVote(String token, int voteId)
```

查看针对 voteId 这个投票项目，我的投票情况

如果返回 700 ，说明你还没投票，用该方法可用来判断我有没有投票

### 我要投票

```js
Apifm.vote(String token, int voteId, String items, String remark)
```

> 投票动作，具体参数说明:

**voteId** *上述的投票项目id*

**items** *选择的投票选项，单选的话就一个选项，多选的话就是你选择几个就几个，多个选项之间，用英文逗号分隔*

**remark** *投票备注*

### 查看投票明细

```js
Apifm.voteLogs(Map<String, String> params)
```

查询某个投票项目所有的参与者名录、以及具体的投票选项

## 商品条码查询

```js
Apifm.queryBarcode(String barcode)
```

barcode 为商品的条码，可以利用小程序的扫码api、扫码枪等实现快速识别条码


## 短链接服务

```js
Apifm.shortUrl(String url)
```

将长链接生成短链接

url 参数为原始的长链接地址

## 地图工具

### 计算2个坐标之间的距离

```js
Apifm.mapDistance(String lat1, String lng1, String lat2, String lng2)
```

### 将坐标地址转换为详细地址

```js
Apifm.mapQQAddress(String location, [int coord_type])
```

比如可将 30.274085,120.15507 这个坐标翻译成：

浙江省杭州市拱墅区环城北路318号

### 地图上搜索

```js
Apifm.mapQQSearch(Map<String, String> params)
```

在地图上搜索地理位置，例如找肯德基，找星巴克等等;

参数说明：

**keyword**

*关键词，比如: kfc、星巴克、瑞幸咖啡*

**boundary**

*搜索范围，目前支持以下3种方式：*
1. 在城市类查找所有: region(北京,0)
2. 在当前定位为圆心范围内搜索: nearby(39.908491,116.374328,1000)
3. 指定的区域内搜索: rectangle(39.9072,116.3689,39.9149,116.3793)

**page**

*读取第几页数据，不传该参数默认取第一页*

**pageSize**

*每页显示几条数据，不传该参数默认取10条，该参数最多数字为20*

## 排队叫号

### 获取所有的队列

```js
Apifm.queuingTypes(String status)
```

获取所有的叫号队列

status 参数代表（0 正常 1 关闭 2 名额已满），不传该参数则获取所有的队列

*比如餐饮里面的: 2人桌、4人桌、大圆桌；这3个队列是独立叫号的，用户根据自己的实际情况到对应的队列里面去取号排队；*

*还比如银行办事大厅的队列：个人业务、对公业务、现金业务；这3个队列也是独立叫号的；*

### 取号

```js
Apifm.queuingGet(String token, int typeId, [String mobile])
```

用户需要登录后才能取号，所以请提供正确的 token

typeId 为你要取号的队列的id，请根据上面的方法获取

mobile 为取号手机号码，非必填，后续你可以向这个手机号码推送队列进度情况及排队提醒

### 我的取号情况

```js
Apifm.queuingMy(String token, int typeId, int status)
```

typeId 为你要取号的队列的id，如果不传则获取所有队列的取号信息

status 代表（0 排队中 1 受理中 2 已处理 3 已过号）不传该参数则读取所有的取号记录

# 社交通讯

## 好友管理

### 读取好友列表

```js
Apifm.friendList(Map<String, String> params)
```

拉取我的好友列表，分页展示

### 添加好友

```js
Apifm.addFriend(String token, int uid)
```

添加 uid 指定用户编号的用户为好友

### 查看好友详情

```js
Apifm.friendUserDetail(String token, int uid)
```

查看 uid 指定用户编号的好友用户资料

需要系统参数中开启 ALLOW_VIEW_FRIEND 参数才可查看

## 站内信管理

### 站内消息列表

```js
Apifm.messageList(Map<String, String> params)
```

### 设置为已读

```js
Apifm.messageRead(String token, int id)
```

### 删除站内信

```js
Apifm.messageDelete(String token, int id)
```
