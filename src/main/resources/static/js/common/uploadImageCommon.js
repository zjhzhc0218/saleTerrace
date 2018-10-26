/*!  2018-10-22 */

var jic = {
    setting: {
        path: "",
        appid: "",
        bucket: "",
        purpose: "",
        fileName: "",
        cos: new Object,
        userid: "",
        source_input_obj: ""
    },
    init: function() {
        this.setting.cos = new CosCloud({
            appid: this.setting.appid,
            bucket: this.setting.bucket,
            region: "gz",
            getAppSign: function(a) {
                $.ajax("/cos/effectiveSign.htm?cusPath=" + this.setting.path).done(function(b) {
                    console.log(b.sign);
                    var c = b.sign;
                    a(c)
                })
            },
            getAppSignOnce: function(a) {}
        })
    },
    compress: function(a, b) {
        var c = $(a)[0]
            , d = c.files[0]
            , e = d.type
            , f = "jpg";
        if (void 0 !== f && "png" == f && (e = "image/png"),
        /image\/\w+/.test(fileType) && ("image/png" == e && (f = "png"),
        parseInt(d.size) / 1024 > 100)) {
            var g = new FileReader;
            g.readAsDataURL(d),
                g.onload = function(a) {
                    var b = a.target.result
                        , c = new Image;
                    c.src = b,
                        c.onload = function() {
                            var a = document.createElement("canvas")
                                , b = 1;
                            (this.width > 1e3 || this.height > 1e3) && (b = this.width > this.height ? 1e3 / this.width : 1e3 / this.height),
                                a.width = this.width * b,
                                a.height = this.height * b,
                                a.getContext("2d").drawImage(this, 0, 0, a.width, a.height);
                            for (var c = a.toDataURL(fileType, .8), f = window.atob(c.split(",")[1]), g = new Uint8Array(f.length), h = 0; h < f.length; h++)
                                g[h] = f.charCodeAt(h);
                            d = new Blob([g],{
                                type: e
                            })
                        }
                }
        }
    },
    upload: function(a, b, c, d, e, f, g, h) {
        var i = $(a)[0]
            , j = i.files[0]
            , k = j.name;
        this.setting.purpose = c,
            this.setting.fileName = k,
            this.setting.path = "/" + c + "/" + (new Date).Format("yyyy-MM-dd") + "/" + d + "/" + randomWord(!1, 36) + "." + k.substring(k.lastIndexOf(".") + 1);
        var l = this.setting.path;
        new CosCloud({
            appid: this.setting.appid,
            bucket: this.setting.bucket,
            region: "gz",
            getAppSign: function(a) {
                $.ajax("/cos/effectiveSign.htm?cosPath=" + l).done(function(b) {
                    var c = b.sign;
                    a(c),
                        setTimeout(function() {
                            e(source_input_obj, l)
                        }, 1e3)
                })
            },
            getAppSignOnce: function(a) {}
        }).uploadFile(f, g, h, this.setting.bucket, this.setting.path, j, 0)
    },
    onchange: function(a, b, c, d, e, f, g) {
        if ("" == a.value)
            return !1;
        var h = $(a)[0]
            , i = h.files[0]
            , j = i.type;
        if (/image\/\w+/.test(j)) {
            "image/png" == j && "png";
            var k = i.name;
            if (this.setting.appid || (this.setting.appid = getCosAppId()),
            this.setting.bucket || (this.setting.bucket = getCosBucketName()),
            !b || !c || !getCurrentDate())
                return alert("请刷新页面重试！"),
                    !1;
            if (this.setting.purpose = b,
                this.setting.userid = c,
                this.setting.fileName = k,
                this.setting.source_input_obj = a,
                this.setting.path = "/" + b + "/" + getCurrentDate() + "/" + c + "/" + randomWord(!1, 36) + "." + k.substring(k.lastIndexOf(".") + 1),
            parseInt(i.size) / 1024 > 100) {
                var l = (this.cosUpload,
                    new FileReader);
                l.onload = function(a) {
                    var b = a.target.result
                        , c = new Image;
                    c.src = b,
                        c.onload = function() {
                            var a = document.createElement("canvas")
                                , b = 1;
                            (this.width > 1e3 || this.height > 1e3) && (b = this.width > this.height ? 1e3 / this.width : 1e3 / this.height),
                                a.width = this.width * b,
                                a.height = this.height * b,
                                a.getContext("2d").drawImage(this, 0, 0, a.width, a.height);
                            for (var c = a.toDataURL(j, .8), g = window.atob(c.split(",")[1]), h = new Uint8Array(g.length), k = 0; k < g.length; k++)
                                h[k] = g.charCodeAt(k);
                            i = new Blob([h],{
                                type: j
                            }),
                                jic.cosUpload(i, d, e, f)
                        }
                }
                    ,
                    l.readAsDataURL(i)
            } else
                this.cosUpload(i, d, e, f)
        } else
            alert("请选择图片！");
        return !1
    },
    errorCallback: function(a) {},
    duringCallback: function(a) {},
    successCallback: function(a) {},
    compressAndUpload: function(a, b, c, d, e, f, g, h, i, j, k) {
        var l = "image/jpeg";
        void 0 !== d && "png" == d && (l = "image/png");
        var m = document.createElement("canvas")
            , n = 1;
        (a.naturalWidth > 800 || a.naturalHeight > 800) && (n = a.naturalWidth > a.naturalHeight ? 800 / a.naturalWidth : 800 / a.naturalHeight),
            m.width = a.naturalWidth * n,
            m.height = a.naturalHeight * n;
        var o = (m.getContext("2d").drawImage(a, 0, 0),
            m.toDataURL(l, c / 100));
        void 0 === XMLHttpRequest.prototype.sendAsBinary && (XMLHttpRequest.prototype.sendAsBinary = function(a) {
                var b = Array.prototype.map.call(a, function(a) {
                    return 255 & a.charCodeAt(0)
                });
                this.send(new Uint8Array(b).buffer)
            }
        );
        var p = o;
        p = p.replace("data:" + type + ";base64,", "");
        var q = new XMLHttpRequest;
        q.open("POST", e, !0),
            q.send(params);
        if (q.setRequestHeader("Content-Type", "multipart/form-data; boundary=someboundary"),
        k && "object" == typeof k)
            for (var r in k)
                q.setRequestHeader(r, k[r]);
        j && j instanceof Function && (q.upload.onprogress = function(a) {
                a.lengthComputable && j(a.loaded / a.total * 100)
            }
        ),
            q.sendAsBinary(["--someboundary", 'Content-Disposition: form-data; name="' + f + '"; filename="' + g + '"', "Content-Type: " + type, "", atob(p), "--someboundary--"].join("\r\n")),
            q.onreadystatechange = function() {
                4 == this.readyState && (200 == this.status ? h(this.responseText) : this.status >= 400 && i && i instanceof Function && i(this.responseText))
            }
    },
    cosUpload: function(a, b, c, d) {
        var e = this.setting.path
            , f = this.setting.source_input_obj;
        new CosCloud({
            appid: this.setting.appid,
            bucket: this.setting.bucket,
            region: "gz",
            getAppSign: function(a) {
                $.ajax("/cos/effectiveSign.htm?cosPath=" + e).done(function(c) {
                    var d = c.sign;
                    a(d),
                        setTimeout(function() {
                            b(f, e)
                        }, 1e3)
                })
            },
            getAppSignOnce: function(a) {}
        }).uploadFile(c, d, "", this.setting.bucket, this.setting.path, a, 0)
    },
    onchangeVideo: function(a, b, c, d, e, f, g) {
        if ("" == a.value)
            return !1;
        var h = $(a)[0]
            , i = h.files[0];
        if (/video\/\w+/.test(i.type)) {
            var j = i.name;
            if (this.setting.appid || (this.setting.appid = getCosAppId()),
            this.setting.bucket || (this.setting.bucket = getCosBucketName()),
            !b || !c || !getCurrentDate())
                return alert("请刷新页面重试！"),
                    !1;
            if (parseInt(i.size) / 1048576 > 20)
                return alert("视屏文件太大，无法上传！"),
                    !1;
            this.setting.purpose = b,
                this.setting.userid = c,
                this.setting.fileName = j,
                this.setting.source_input_obj = a,
                this.setting.path = "/" + b + "/" + getCurrentDate() + "/" + c + "/" + randomWord(!1, 36) + "." + j.substring(j.lastIndexOf(".") + 1),
                parseInt(i.size) / 1048576 > 5 ? jic.sliceCosUpload(i, d, e, f) : this.cosUpload(i, d, e, f)
        } else
            alert("请选择视频文件！");
        return !1
    },
    sliceCosUpload: function(a, b, c, d) {
        var e = this.setting.path
            , f = this.setting.source_input_obj;
        new CosCloud({
            appid: this.setting.appid,
            bucket: this.setting.bucket,
            region: "gz",
            getAppSign: function(a) {
                $.ajax("/cos/effectiveSign.htm?cosPath=" + e).done(function(c) {
                    var d = c.sign;
                    a(d),
                        setTimeout(function() {
                            b(f, e)
                        }, 1e3)
                })
            },
            getAppSignOnce: function(a) {}
        }).sliceUploadFile(c, d, "", this.setting.bucket, this.setting.path, a, 0)
    }
};
