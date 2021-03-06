library apifm;

import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import 'dart:math';

var _API_BASE_URL = 'https://api.it120.cc';
var _SUB_DOMAIN = 'tz';

// _mockHoldon() async {
//   // 模拟接口等待5秒
//   return Future.delayed(Duration(seconds: 5), () {});
// }

init(b) {
  _SUB_DOMAIN = b;
}

init2(a, b) {
  _API_BASE_URL = a;
  _SUB_DOMAIN = b;
}

request(url, needSubDomain, method, [data = '']) async {
  if (data == null) {
    data = {};
  }
  // await _mockHoldon();
  String _url = _API_BASE_URL + (needSubDomain ? '/' + _SUB_DOMAIN : '') + url;
  if (method.toLowerCase() == 'get') {
    // 拼接参数
    if (data.length > 0) {
      data.forEach((key, value) {
        if (_url.indexOf("?") == -1) {
          _url = _url + "?$key=$value";
        } else {
          _url = _url + "&$key=$value";
        }
      });
    }
    var response = await http.get(_url);
    if (response.statusCode == 200) {
      return convert.jsonDecode(response.body);
    }
    throw Exception('api server response error with statusCode ${response.statusCode}');
  }
  if (method.toLowerCase() == 'post') {
    var response = await http.post(_url, body: data);
    if (response.statusCode == 200) {
      return convert.jsonDecode(response.body);
    }
    throw Exception('api server response error with statusCode ${response.statusCode}');
  }
  throw Exception('error param method');
}

queryMobileLocation(mobile) {
  return request('/common/mobile-segment/location', false, 'get', {
    'mobile': mobile
  });
}
nextMobileSegment (data) {
  return request('/common/mobile-segment/next', false, 'post', data);
}
queryConfigValue (key) {
  return request('/config/value', true, 'get', {
    'key': key
  });
}
queryConfigBatch (keys) {
  return request('/config/values', true, 'get', {
    'keys': keys
  });
}
scoreRules ([data]) {
  return request('/score/send/rule', true, 'post', data);
}
scoreSignRules () {
  return request('/score/sign/rules', true, 'get');
}
scoreSign (token) {
  return request('/score/sign', true, 'post', {
    'token': token
  });
}
scoreSignLogs (data) {
  return request('/score/sign/logs', true, 'post', data);
}
scoreTodaySignedInfo (token) {
  return request('/score/today-signed', true, 'get', {
    'token': token
  });
}
scoreExchange (token, number) {
  return request('/score/exchange', true, 'post', {
    'number': number,
    'token': token
  });
}
scoreLogs (data) {
  return request('/score/logs', true, 'post', data);
}
kanjiaSet (goodsId) {
  return request('/shop/goods/kanjia/set', true, 'get', {
    'goodsId': goodsId
  });
}
kanjiaJoin (token, kjid) {
  return request('/shop/goods/kanjia/join', true, 'post', {
    'kjid': kjid,
    'token': token
  });
}
kanjiaDetail (kjid, joiner) {
  return request('/shop/goods/kanjia/info', true, 'get', {
    'kjid': kjid,
    'joiner': joiner
  });
}
kanjiaHelp (token, kjid, joiner, [remark = '']) {
  return request('/shop/goods/kanjia/help', true, 'post', {
    'kjid': kjid,
    'joinerUser': joiner,
    'token': token,
    'remark': remark
  });
}
kanjiaClear (token, kjid) {
  return request('/shop/goods/kanjia/clear', true, 'post', {
    'kjid': kjid,
    'token': token
  });
}
kanjiaMyJoinInfo (token, kjid) {
  return request('/shop/goods/kanjia/my', true, 'get', {
    'kjid': kjid,
    'token': token
  });
}
kanjiaHelpDetail (token, kjid, joiner) {
  return request('/shop/goods/kanjia/myHelp', true, 'get', {
    'kjid': kjid,
    'joinerUser': joiner,
    'token': token
  });
}
checkToken (token) {
  return request('/user/check-token', true, 'get', {
    'token': token
  });
}
// wxpay (data) {
//   return request('/pay/wx/wxapp', true, 'post', data);
// }
// alipay (data) {
//   return request('/pay/alipay/semiAutomatic/payurl', true, 'post', data);
// }
loginUsername (username, pwd, deviceId, deviceName) {
  return request('/user/username/login', true, 'post', {
    'username': username,
    'pwd': pwd,
    'deviceId': deviceId,
    'deviceName': deviceName,
  });
}
loginEmail(email, pwd, deviceId, deviceName) {
  return request('/user/email/login', true, 'post', {
    'email': email,
    'pwd': pwd,
    'deviceId': deviceId,
    'deviceName': deviceName,
  });
}
bindUsername (token, username, [pwd = '']) {
  return request('/user/username/bindUsername', true, 'post', {
    'token': token,
    'username': username,
    'pwd': pwd
  });
}
loginMobile (mobile, pwd, deviceId, deviceName) {
  return request('/user/m/login', true, 'post', {
    'mobile': mobile,
    'pwd': pwd,
    'deviceId': deviceId,
    'deviceName': deviceName,
  });
}
resetPwdUseMobileCode (mobile, pwd, code) {
  return request('/user/m/reset-pwd', true, 'post', {
    'mobile': mobile,
    'pwd': pwd,
    'code': code
  });
}
resetPwdUseEmailCode (email, pwd, code) {
  return request('/user/email/reset-pwd', true, 'post', {
    'email': email,
    'pwd': pwd,
    'code': code
  });
}
registerUsername (data) {
  return request('/user/username/register', true, 'post', data);
}
registerMobile (data) {
  return request('/user/m/register', true, 'post', data);
}
banners ([data]) {
  return request('/banner/list', true, 'get', data);
}
goodsCategory () {
  return request('/shop/goods/category/all', true, 'get');
}
goods ([data]) {
  return request('/shop/goods/list', true, 'post', data);
}
goodsDetail (id) {
  return request('/shop/goods/detail', true, 'get', {
    'id': id
  });
}
goodsLimitations (goodsId, [priceId = '']) {
  return request('/shop/goods/limitation', true, 'get', {
    'goodsId': goodsId,
    'priceId': priceId
  });
}
goodsPrice (goodsId, propertyChildIds) {
  return request('/shop/goods/price', true, 'post', {
    'goodsId': goodsId,
    'propertyChildIds': propertyChildIds
  });
}
goodsPriceDaily (goodsId, [priceId = '']) {
  return request('/shop/goods/price/day', true, 'get', {
    'goodsId': goodsId,
    'priceId': priceId
  });
}
goodsPriceFreight (data) {
  return request('/shop/goods/price/freight', true, 'get', data);
}
goodsRebate (token, goodsId) {
  return request('/shop/goods/rebate', true, 'get', {
    'token': token,
    'goodsId': goodsId
  });
}
goodsReputation (data) {
  return request('/shop/goods/reputation', true, 'post', data);
}
goodsFavList (data) {
  return request('/shop/goods/fav/list', true, 'post', data);
}
goodsFavPut (token, goodsId) {
  return request('/shop/goods/fav/add', true, 'post', {
    'token': token,
    'goodsId': goodsId
  });
}
goodsFavCheck (token, goodsId) {
  return request('/shop/goods/fav/check', true, 'get', {
    'token': token,
    'goodsId': goodsId
  });
}
goodsFavDelete (token, {id = '', goodsId = ''}) {
  return request('/shop/goods/fav/delete', true, 'post', {
    'token': token,
    'id': id,
    'goodsId': goodsId
  });
}
coupons (data) {
  return request('/discounts/coupons', true, 'get', data);
}
couponDetail (id) {
  return request('/discounts/detail', true, 'get', {
    'id': id
  });
}
myCoupons (data) {
  return request('/discounts/my', true, 'get', data);
}
fetchCoupons (data) {
  return request('/discounts/fetch', true, 'post', data);
}
sendCoupons (data) {
  return request('/discounts/send', true, 'post', data);
}
exchangeCoupons (token, number, pwd) {
  return request('/discounts/exchange', true, 'post', {
    'token': token,
    'number': number,
    'pwd': pwd
  });
}
noticeList (data) {
  return request('/notice/list', true, 'post', data);
}
noticeLastOne ([type = '']) {
  return request('/notice/last-one', true, 'get', {
    'type': type
  });
}
noticeDetail (id) {
  return request('/notice/detail', true, 'get', {
    'id': id
  });
}
addAddress (data) {
  return request('/user/shipping-address/add', true, 'post', data);
}
updateAddress (data) {
  return request('/user/shipping-address/update', true, 'post', data);
}
deleteAddress (token, id) {
  return request('/user/shipping-address/delete', true, 'post', {
    'id': id,
    'token': token
  });
}
queryAddress (token) {
  return request('/user/shipping-address/list', true, 'get', {
    'token': token
  });
}
defaultAddress (token) {
  return request('/user/shipping-address/default/v2', true, 'get', {
    'token': token
  });
}
addressDetail (token, id) {
  return request('/user/shipping-address/detail/v2', true, 'get', {
    'id': id,
    'token': token
  });
}
pingtuanSet (goodsId) {
  return request('/shop/goods/pingtuan/set', true, 'get', {
    'goodsId': goodsId
  });
}
pingtuanSets (goodsIds) {
  return request('/shop/goods/pingtuan/sets', true, 'get', {
    'goodsId': goodsIds
  });
}
pingtuanOpen (token, goodsId) {
  return request('/shop/goods/pingtuan/open', true, 'post', {
    'goodsId': goodsId,
    'token': token
  });
}
pingtuanList (data) {
  return request('/shop/goods/pingtuan/list/v2', true, 'post', data);
}
pingtuanJoinUsers (tuanId) {
  return request('/shop/goods/pingtuan/joiner', true, 'get', {
    'tuanId': tuanId
  });
}
pingtuanMyJoined (data) {
  return request('/shop/goods/pingtuan/my-join-list', true, 'post', data);
}
friendlyPartnerList ([type = '']) {
  return request('/friendly-partner/list', true, 'post', {
    'type': type
  });
}
friendList (data) {
  return request('/user/friend/list', true, 'post', data);
}
addFriend (token, uid) {
  return request('/user/friend/add', true, 'post', {
    'token': token,
    'uid': uid
  });
}
friendUserDetail (token, uid) {
  return request('/user/friend/detail', true, 'get', {
    'token': token,
    'uid': uid
  });
}
videoDetail (videoId) {
  return request('/media/video/detail', true, 'get', {
    'videoId': videoId
  });
}
bindMobileSms (token, mobile, code, [pwd = '']) {
  return request('/user/m/bind-mobile', true, 'post', {
    'token': token,
    'mobile': mobile,
    'code': code,
    'pwd': pwd
  });
}
userDetail (token) {
  return request('/user/detail', true, 'get', {
    'token': token
  });
}
userAmount (token) {
  return request('/user/amount', true, 'get', {
    'token': token
  });
}
orderCreate (data) {
  return request('/order/create', true, 'post', data);
}
orderList (data) {
  return request('/order/list', true, 'post', data);
}
orderDetail (token, id) {
  return request('/order/detail', true, 'get', {
    'id': id,
    'token': token
  });
}
orderDelivery (token, orderId) {
  return request('/order/delivery', true, 'post', {
    'orderId': orderId,
    'token': token
  });
}
orderReputation (data) {
  return request('/order/reputation', true, 'post', data);
}
orderClose (token, orderId) {
  return request('/order/close', true, 'post', {
    'orderId': orderId,
    'token': token
  });
}
orderDelete (token, orderId) {
  return request('/order/delete', true, 'post', {
    'orderId': orderId,
    'token': token
  });
}
orderPay (token, orderId) {
  return request('/order/pay', true, 'post', {
    'orderId': orderId,
    'token': token
  });
}
orderHX (hxNumber) {
  return request('/order/hx', true, 'post', {
    'hxNumber': hxNumber
  });
}
orderStatistics (token) {
  return request('/order/statistics', true, 'get', {
    'token': token
  });
}
orderRefunds (token, orderId) {
  return request('/order/refund', true, 'get', {
    'token': token,
    'orderId': orderId
  });
}
withDrawApply (token, money) {
  return request('/user/withDraw/apply', true, 'post', {
    'money': money,
    'token': token
  });
}
withDrawDetail (token, id) {
  return request('/user/withDraw/detail', true, 'get', {
    'token': token,
    'id': id
  });
}
withDrawLogs (data) {
  return request('/user/withDraw/list', true, 'post', data);
}
province () {
  return request('/common/region/v2/province', false, 'get');
}
nextRegion (pid) {
  return request('/common/region/v2/child', false, 'get', {
    'pid': pid
  });
}
cashLogs (data) {
  return request('/user/cashLog', true, 'post', data);
}
payLogs (data) {
  return request('/user/payLogs', true, 'post', data);
}
rechargeSendRules () {
  return request('/user/recharge/send/rule', true, 'get');
}
payBillDiscounts () {
  return request('/payBill/discounts', true, 'get');
}
payBill (token, money) {
  return request('/payBill/pay', true, 'post', {
    'token': token,
    'money': money
  });
}
vipLevel () {
  return request('/config/vipLevel', true, 'get');
}
fxApply (token, name, mobile) {
  return request('/saleDistribution/apply', true, 'post', {
    'token': token,
    'name': name,
    'mobile': mobile
  });
}
fxApplyProgress (token) {
  return request('/saleDistribution/apply/progress', true, 'get', {
    'token': token
  });
}
fxMembers (data) {
  return request('/saleDistribution/members', true, 'post', data);
}
fxCommisionLog (data) {
  return request('/saleDistribution/commision/log', true, 'post', data);
}
uploadFile (token, tempFilePath) {
  // TODO
  print('请联系我们完善该功能');
}
uploadFileFromUrl (remoteFileUrl, ext) {
  return request('/dfs/upload/url', true, 'post', {
    'remoteFileUrl': remoteFileUrl,
    'ext': ext
  });
}
uploadFileList ([path = '']) {
  return request('/dfs/upload/list', true, 'post', {
    'path': path
  });
}
refundApply (data) {
  return request('/order/refundApply/apply', true, 'post', data);
}
refundApplyDetail (token, orderId) {
  return request('/order/refundApply/info', true, 'get', {
    'token': token,
    'orderId': orderId
  });
}
refundApplyCancel (token, orderId) {
  return request('/order/refundApply/cancel', true, 'post', {
    'token': token,
    'orderId': orderId
  });
}
cmsCategories () {
  return request('/cms/category/list', true, 'get', {});
}
cmsCategoryDetail (id) {
  return request('/cms/category/detail', true, 'get', {
    'id': id
  });
}
cmsArticles (data) {
  return request('/cms/news/list', true, 'post', data);
}
cmsArticleUsefulLogs (data) {
  return request('/cms/news/useful/logs', true, 'post', data);
}
cmsArticleDetail (id) {
  return request('/cms/news/detail', true, 'get', {
    'id': id
  });
}
cmsArticlePreNext (id) {
  return request('/cms/news/preNext', true, 'get', {
    'id': id
  });
}
cmsArticleCreate (data) {
  return request('/cms/news/put', true, 'post', data);
}
cmsArticleDelete (token, id) {
  return request('/cms/news/del', true, 'post', {
    'token': token,
    'id': id
  });
}
cmsArticleUseless (data) {
  return request('/cms/news/useful', true, 'post', data);
}
cmsPage (key) {
  return request('/cms/page/info', true, 'get', {
    'key': key
  });
}
cmsTags () {
  return request('/cms/tags/list', true, 'get', {});
}
invoiceList (data) {
  return request('/invoice/list', true, 'post', data);
}
invoiceApply (data) {
  return request('/invoice/apply', true, 'post', data);
}
invoiceDetail (token, id) {
  return request('/invoice/info', true, 'get', {
    'token': token,
    'id': id
  });
}
depositList (data) {
  return request('/deposit/list', true, 'post', data);
}
payDeposit (data) {
  return request('/deposit/pay', true, 'post', data);
}
depositInfo (token, id) {
  return request('/deposit/info', true, 'get', {
    'token': token,
    'id': id
  });
}
depositBackApply (token, id) {
  return request('/deposit/back/apply', true, 'post', {
    'token': token,
    'id': id
  });
}
fetchShops (data) {
  return request('/shop/subshop/list', true, 'post', data);
}
shopSubdetail (id) {
  return request('/shop/subshop/detail/v2', true, 'get', {
    'id': id
  });
}
addComment (data) {
  return request('/comment/add', true, 'post', data);
}
commentList (data) {
  return request('/comment/list', true, 'post', data);
}
modifyUserInfo (data) {
  return request('/user/modify', true, 'post', data);
}
uniqueId ([type = '']) {
  return request('/uniqueId/get', true, 'get', {
    'type': type
  });
}
queryBarcode (barcode) {
  return request('/barcode/info', true, 'get', {
    'barcode': barcode
  });
}
luckyInfo (id) {
  return request('/luckyInfo/info', true, 'get', {
    'id': id
  });
}
luckyInfoJoin (token, id) {
  return request('/luckyInfo/join', true, 'post', {
    'id': id,
    'token': token
  });
}
luckyInfoJoinMy (token, id) {
  return request('/luckyInfo/join/my', true, 'get', {
    'id': id,
    'token': token
  });
}
luckyInfoJoinLogs (data) {
  return request('/luckyInfo/join/logs', true, 'post', data);
}
jsonList ([data]) {
  return request('/json/list', true, 'post', data);
}
jsonSet (data) {
  return request('/json/set', true, 'post', data);
}
jsonDelete (id, [token = '']) {
  return request('/json/delete', true, 'post', {
    'token': token,
    'id': id
  });
}
graphValidateCodeUrl () {
  var key = Random().nextDouble().toString();
  var imageUrl = _API_BASE_URL + '/' + _SUB_DOMAIN + '/verification/pic/get?key=' + key;
  return {
    'key': key,
    'imageUrl': imageUrl,
  };
}
graphValidateCodeCheck (key, code) {
  return request('/verification/pic/check', true, 'post', {
    'key': key,
    'code': code
  });
}
shortUrl (url) {
  return request('/common/short-url/shorten', false, 'post', {
    'url': url
  });
}
smsValidateCode (mobile, [key = '', picCode = '']) {
  return request('/verification/sms/get', true, 'get', {
    'mobile': mobile,
    'key': key,
    'picCode': picCode
  });
}
smsValidateCodeCheck (mobile, code) {
  return request('/verification/sms/check', true, 'post', {
    'mobile': mobile,
    'code': code
  });
}
mailValidateCode(mail) {
  return request('/verification/mail/get', true, 'get', {
    'mail': mail
  });
}
mailValidateCodeCheck(mail, code) {
  return request('/verification/mail/check', true, 'post', {
    'mail': mail,
    'code': code
  });
}
mapDistance (lat1, lng1, lat2, lng2) {
  return request('/common/map/distance', false, 'get', {
    'lat1': lat1,
    'lng1': lng1,
    'lat2': lat2,
    'lng2': lng2
  });
}
mapQQAddress (location, [coordType = '5']) {
  return request('/common/map/qq/address', false, 'get', {
    'location': location,
    'coord_type': coordType
  });
}
mapQQSearch (data) {
  return request('/common/map/qq/search', false, 'post', data);
}
virtualTraderList (data) {
  return request('/virtualTrader/list', true, 'post', data);
}
virtualTraderDetail (token, id) {
  return request('/virtualTrader/info', true, 'get', {
    'token': token,
    'id': id
  });
}
virtualTraderBuy (token, id) {
  return request('/virtualTrader/buy', true, 'post', {
    'token': token,
    'id': id
  });
}
virtualTraderMyBuyLogs (data) {
  return request('/virtualTrader/buy/logs', true, 'post', data);
}
queuingTypes ([status = '']) {
  return request('/queuing/types', true, 'get', {
    'status': status
  });
}
queuingGet (token, typeId, [mobile = '']) {
  return request('/queuing/get', true, 'post', {
    'token': token,
    'typeId': typeId,
    'mobile': mobile
  });
}
queuingMy (token, [typeId = '', status = '']) {
  return request('/queuing/my', true, 'get', {
    'token': token,
    'typeId': typeId,
    'status': status
  });
}
idcardCheck (token, name, idCardNo) {
  return request('/user/idcard', true, 'post', {
    'token': token,
    'name': name,
    'idCardNo': idCardNo
  });
}
loginout (token) {
  return request('/user/loginout', true, 'get', {
    'token': token
  });
}
userLevelList (data) {
  return request('/user/level/list', true, 'post', data);
}
userLevelDetail (levelId) {
  return request('/user/level/info', true, 'get', {
    'id': levelId
  });
}
userLevelPrices (levelId) {
  return request('/user/level/prices', true, 'get', {
    'levelId': levelId
  });
}
userLevelBuy (token, priceId, [isAutoRenew = false, remark = '']) {
  return request('/user/level/buy', true, 'post', {
    'token': token,
    'userLevelPriceId': priceId,
    'isAutoRenew': isAutoRenew,
    'remark': remark
  });
}
userLevelBuyLogs (data) {
  return request('/user/level/buyLogs', true, 'post', data);
}
messageList (data) {
  return request('/user/message/list', true, 'post', data);
}
messageRead (token, id) {
  return request('/user/message/read', true, 'post', {
    'token': token,
    'id': id
  });
}
messageDelete (token, id) {
  return request('/user/message/del', true, 'post', {
    'token': token,
    'id': id
  });
}
scoreDeductionRules () {
  return request('/score/deduction/rules', true, 'get');
}
voteItems (data) {
  return request('/vote/items', true, 'post', data);
}
voteItemDetail (id) {
  return request('/vote/info', true, 'get', {
    'id': id
  });
}
vote (token, voteId, items, [remark = '']) {
  return request('/vote/vote', true, 'post', {
    'token': token,
    'voteId': voteId,
    'items': items,
    'remark': remark
  });
}
myVote (token, voteId) {
  return request('/vote/vote/info', true, 'get', {
    'token': token,
    'voteId': voteId,
  });
}
voteLogs (data) {
  return request('/vote/vote/list', true, 'post', data);
}
yuyueItems (data) {
  return request('/yuyue/items', true, 'post', data);
}
yuyueItemDetail (id) {
  return request('/yuyue/info', true, 'get', {
    'id': id
  });
}
yuyueJoin (data) {
  return request('/yuyue/join', true, 'post', data);
}
yuyueJoinPay (token, joinId) {
  return request('/yuyue/pay', true, 'post', {
    'token': token,
    'joinId': joinId
  });
}
yuyueJoinUpdate (token, joinId, extJsonStr) {
  return request('/yuyue/join/update', true, 'post', {
    'token': token,
    'joinId': joinId,
    'extJsonStr': extJsonStr
  });
}
yuyueMyJoinInfo (token, joinId) {
  return request('/yuyue/join/info', true, 'post', {
    'token': token,
    'joinId': joinId
  });
}
yuyueMyJoinLogs (data) {
  return request('/yuyue/join/list', true, 'post', data);
}
yuyueTeams (data) {
  return request('/yuyue/info/teams', true, 'post', data);
}
yuyueTeamDetail (teamId) {
  return request('/yuyue/info/team', true, 'get', {
    'teamId': teamId
  });
}
yuyueTeamMembers (data) {
  return request('/yuyue/info/team/members', true, 'post', data);
}
yuyueTeamDeleteMember (token, joinId) {
  return request('/yuyue/info/team/members/del', true, 'post', {
    'token': token,
    'joinId': joinId
  });
}
registerEmail(data) {
  return request('/user/email/register', true, 'post', data);
}
bindEmail(token, email, code, [pwd]) {
  return request('/user/email/bindUsername', true, 'post', {
    'token': token,
    'email': email,
    'code': code,
    'pwd': pwd
  });
}
registerQQConnect(data) {
  return request('/user/qqconnect/register', true, 'post', data);
}
loginQQConnect(oauthConsumerKey, openid, accessToken) {
  return request('/user/qqconnect/login', true, 'post', {
    'oauthConsumerKey': oauthConsumerKey,
    'openid': openid,
    'accessToken': accessToken,
  });
}
bindQQConnectOpenid (token, oauthConsumerKey, openid, accessToken) {
  return request('/user/qqconnect/bindOpenid', true, 'post', {
    'token': token,
    'oauthConsumerKey': oauthConsumerKey,
    'openid': openid,
    'accessToken': accessToken,
  });
}
registerWX(data) {
  return request('/user/wxsns/register', true, 'post', data);
}
loginWX(code) {
  return request('/user/wxsns/login', true, 'post', {
    'code': code,
  });
}
bindWXOpenid (token, code) {
  return request('/user/wxsns/bindOpenid', true, 'post', {
    'token': token,
    'code': code,
  });
}