/**
 *扩展store js中的需要过期存储的问题
 */
var storeWithExpiration = {
    set: function (key, val, exp) {
        store.set(key, {val: val, exp: exp, time: new Date().getTime()});
    },
    get: function (key) {
        var info = store.get(key);
        if (!info) {
            return null;
        }
        //如果过期，则清除然后返回null
        if (new Date().getTime() - info.time > info.exp) {
            store.remove(key);
            return null;
        }
        return info.val;
    }
}