/*!  2018-10-22 */

!function() {
    var a = function() {
        function a(a) {
            var b = a.length
                , c = C.type(a);
            return "function" !== c && !C.isWindow(a) && (!(1 !== a.nodeType || !b) || "array" === c || 0 === b || "number" == typeof b && b > 0 && b - 1 in a)
        }
        function b(a) {
            var b = L[a] = {};
            return C.each(a.match(K) || [], function(a, c) {
                b[c] = !0
            }),
                b
        }
        function c() {
            I.addEventListener ? (I.removeEventListener("DOMContentLoaded", d, !1),
                window.removeEventListener("load", d, !1)) : (I.detachEvent("onreadystatechange", d),
                window.detachEvent("onload", d))
        }
        function d() {
            (I.addEventListener || "load" === event.type || "complete" === I.readyState) && (c(),
                C.ready())
        }
        function e(a, b, c) {
            if (void 0 === c && 1 === a.nodeType) {
                var d = "data-" + b.replace(Q, "-$1").toLowerCase();
                if ("string" == typeof (c = a.getAttribute(d))) {
                    try {
                        c = "true" === c || "false" !== c && ("null" === c ? null : +c + "" === c ? +c : P.test(c) ? C.parseJSON(c) : c)
                    } catch (a) {}
                    C.data(a, b, c)
                } else
                    c = void 0
            }
            return c
        }
        function f(a) {
            var b;
            for (b in a)
                if (("data" !== b || !C.isEmptyObject(a[b])) && "toJSON" !== b)
                    return !1;
            return !0
        }
        function g(a, b, c, d) {
            if (C.acceptData(a)) {
                var e, f, g = C.expando, h = a.nodeType, i = h ? C.cache : a, j = h ? a[g] : a[g] && g;
                if (j && i[j] && (d || i[j].data) || void 0 !== c || "string" != typeof b)
                    return j || (j = h ? a[g] = s.pop() || C.guid++ : g),
                    i[j] || (i[j] = h ? {} : {
                        toJSON: C.noop
                    }),
                    "object" != typeof b && "function" != typeof b || (d ? i[j] = C.extend(i[j], b) : i[j].data = C.extend(i[j].data, b)),
                        f = i[j],
                    d || (f.data || (f.data = {}),
                        f = f.data),
                    void 0 !== c && (f[C.camelCase(b)] = c),
                        "string" == typeof b ? null == (e = f[b]) && (e = f[C.camelCase(b)]) : e = f,
                        e
            }
        }
        function h(a, b, c) {
            if (C.acceptData(a)) {
                var d, e, g = a.nodeType, h = g ? C.cache : a, i = g ? a[C.expando] : C.expando;
                if (h[i]) {
                    if (b && (d = c ? h[i] : h[i].data)) {
                        C.isArray(b) ? b = b.concat(C.map(b, C.camelCase)) : b in d ? b = [b] : (b = C.camelCase(b),
                            b = b in d ? [b] : b.split(" ")),
                            e = b.length;
                        for (; e--; )
                            delete d[b[e]];
                        if (c ? !f(d) : !C.isEmptyObject(d))
                            return
                    }
                    (c || (delete h[i].data,
                        f(h[i]))) && (g ? C.cleanData([a], !0) : A.deleteExpando || h != h.window ? delete h[i] : h[i] = null)
                }
            }
        }
        function i() {
            return !0
        }
        function j() {
            return !1
        }
        function k(a) {
            return function(b, c) {
                "string" != typeof b && (c = b,
                    b = "*");
                var d, e = 0, f = b.toLowerCase().match(K) || [];
                if (C.isFunction(c))
                    for (; d = f[e++]; )
                        "+" === d.charAt(0) ? (d = d.slice(1) || "*",
                            (a[d] = a[d] || []).unshift(c)) : (a[d] = a[d] || []).push(c)
            }
        }
        function l(a, b, c, d) {
            function e(h) {
                var i;
                return f[h] = !0,
                    C.each(a[h] || [], function(a, h) {
                        var j = h(b, c, d);
                        return "string" != typeof j || g || f[j] ? g ? !(i = j) : void 0 : (b.dataTypes.unshift(j),
                            e(j),
                            !1)
                    }),
                    i
            }
            var f = {}
                , g = a === ha;
            return e(b.dataTypes[0]) || !f["*"] && e("*")
        }
        function m(a, b) {
            var c, d, e = C.ajaxSettings.flatOptions || {};
            for (d in b)
                void 0 !== b[d] && ((e[d] ? a : c || (c = {}))[d] = b[d]);
            return c && C.extend(!0, a, c),
                a
        }
        function n(a, b, c) {
            for (var d, e, f, g, h = a.contents, i = a.dataTypes; "*" === i[0]; )
                i.shift(),
                void 0 === e && (e = a.mimeType || b.getResponseHeader("Content-Type"));
            if (e)
                for (g in h)
                    if (h[g] && h[g].test(e)) {
                        i.unshift(g);
                        break
                    }
            if (i[0]in c)
                f = i[0];
            else {
                for (g in c) {
                    if (!i[0] || a.converters[g + " " + i[0]]) {
                        f = g;
                        break
                    }
                    d || (d = g)
                }
                f = f || d
            }
            if (f)
                return f !== i[0] && i.unshift(f),
                    c[f]
        }
        function o(a, b, c, d) {
            var e, f, g, h, i, j = {}, k = a.dataTypes.slice();
            if (k[1])
                for (g in a.converters)
                    j[g.toLowerCase()] = a.converters[g];
            for (f = k.shift(); f; )
                if (a.responseFields[f] && (c[a.responseFields[f]] = b),
                !i && d && a.dataFilter && (b = a.dataFilter(b, a.dataType)),
                    i = f,
                    f = k.shift())
                    if ("*" === f)
                        f = i;
                    else if ("*" !== i && i !== f) {
                        if (!(g = j[i + " " + f] || j["* " + f]))
                            for (e in j)
                                if (h = e.split(" "),
                                h[1] === f && (g = j[i + " " + h[0]] || j["* " + h[0]])) {
                                    !0 === g ? g = j[e] : !0 !== j[e] && (f = h[0],
                                        k.unshift(h[1]));
                                    break
                                }
                        if (!0 !== g)
                            if (g && a.throws)
                                b = g(b);
                            else
                                try {
                                    b = g(b)
                                } catch (a) {
                                    return {
                                        state: "parsererror",
                                        error: g ? a : "No conversion from " + i + " to " + f
                                    }
                                }
                    }
            return {
                state: "success",
                data: b
            }
        }
        function p(a, b, c, d) {
            var e;
            if (C.isArray(b))
                C.each(b, function(b, e) {
                    c || ka.test(a) ? d(a, e) : p(a + "[" + ("object" == typeof e ? b : "") + "]", e, c, d)
                });
            else if (c || "object" !== C.type(b))
                d(a, b);
            else
                for (e in b)
                    p(a + "[" + e + "]", b[e], c, d)
        }
        function q() {
            try {
                return new window.XMLHttpRequest
            } catch (a) {}
        }
        function r() {
            try {
                return new window.ActiveXObject("Microsoft.XMLHTTP")
            } catch (a) {}
        }
        var s = []
            , t = s.slice
            , u = s.concat
            , v = s.push
            , w = s.indexOf
            , x = {}
            , y = x.toString
            , z = x.hasOwnProperty
            , A = {}
            , B = "1.11.1 -css,-css/addGetHookIf,-css/curCSS,-css/defaultDisplay,-css/hiddenVisibleSelectors,-css/support,-css/swap,-css/var/cssExpand,-css/var/isHidden,-css/var/rmargin,-css/var/rnumnonpx,-effects,-effects/Tween,-effects/animatedSelector,-effects/support,-dimensions,-offset,-deprecated,-event-alias,-wrap"
            , C = function(a, b) {
            return new C.fn.init(a,b)
        }
            , D = /^[\s\uFEFF\xA0]+|[\s\uFEFF\xA0]+$/g
            , E = /^-ms-/
            , F = /-([\da-z])/gi
            , G = function(a, b) {
            return b.toUpperCase()
        };
        C.fn = C.prototype = {
            jquery: B,
            constructor: C,
            selector: "",
            length: 0,
            toArray: function() {
                return t.call(this)
            },
            get: function(a) {
                return null != a ? a < 0 ? this[a + this.length] : this[a] : t.call(this)
            },
            pushStack: function(a) {
                var b = C.merge(this.constructor(), a);
                return b.prevObject = this,
                    b.context = this.context,
                    b
            },
            each: function(a, b) {
                return C.each(this, a, b)
            },
            map: function(a) {
                return this.pushStack(C.map(this, function(b, c) {
                    return a.call(b, c, b)
                }))
            },
            slice: function() {
                return this.pushStack(t.apply(this, arguments))
            },
            first: function() {
                return this.eq(0)
            },
            last: function() {
                return this.eq(-1)
            },
            eq: function(a) {
                var b = this.length
                    , c = +a + (a < 0 ? b : 0);
                return this.pushStack(c >= 0 && c < b ? [this[c]] : [])
            },
            end: function() {
                return this.prevObject || this.constructor(null)
            },
            push: v,
            sort: s.sort,
            splice: s.splice
        },
            C.extend = C.fn.extend = function() {
                var a, b, c, d, e, f, g = arguments[0] || {}, h = 1, i = arguments.length, j = !1;
                for ("boolean" == typeof g && (j = g,
                    g = arguments[h] || {},
                    h++),
                     "object" == typeof g || C.isFunction(g) || (g = {}),
                     h === i && (g = this,
                         h--); h < i; h++)
                    if (null != (e = arguments[h]))
                        for (d in e)
                            a = g[d],
                                c = e[d],
                            g !== c && (j && c && (C.isPlainObject(c) || (b = C.isArray(c))) ? (b ? (b = !1,
                                f = a && C.isArray(a) ? a : []) : f = a && C.isPlainObject(a) ? a : {},
                                g[d] = C.extend(j, f, c)) : void 0 !== c && (g[d] = c));
                return g
            }
            ,
            C.extend({
                expando: "jQuery" + (B + Math.random()).replace(/\D/g, ""),
                isReady: !0,
                error: function(a) {
                    throw new Error(a)
                },
                noop: function() {},
                isFunction: function(a) {
                    return "function" === C.type(a)
                },
                isArray: Array.isArray || function(a) {
                    return "array" === C.type(a)
                }
                ,
                isWindow: function(a) {
                    return null != a && a == a.window
                },
                isNumeric: function(a) {
                    return !C.isArray(a) && a - parseFloat(a) >= 0
                },
                isEmptyObject: function(a) {
                    var b;
                    for (b in a)
                        return !1;
                    return !0
                },
                isPlainObject: function(a) {
                    var b;
                    if (!a || "object" !== C.type(a) || a.nodeType || C.isWindow(a))
                        return !1;
                    try {
                        if (a.constructor && !z.call(a, "constructor") && !z.call(a.constructor.prototype, "isPrototypeOf"))
                            return !1
                    } catch (a) {
                        return !1
                    }
                    if (A.ownLast)
                        for (b in a)
                            return z.call(a, b);
                    for (b in a)
                        ;
                    return void 0 === b || z.call(a, b)
                },
                type: function(a) {
                    return null == a ? a + "" : "object" == typeof a || "function" == typeof a ? x[y.call(a)] || "object" : typeof a
                },
                globalEval: function(a) {
                    a && C.trim(a) && (window.execScript || function(a) {
                            window.eval.call(window, a)
                        }
                    )(a)
                },
                camelCase: function(a) {
                    return a.replace(E, "ms-").replace(F, G)
                },
                nodeName: function(a, b) {
                    return a.nodeName && a.nodeName.toLowerCase() === b.toLowerCase()
                },
                each: function(b, c, d) {
                    var e = 0
                        , f = b.length
                        , g = a(b);
                    if (d) {
                        if (g)
                            for (; e < f && !1 !== c.apply(b[e], d); e++)
                                ;
                        else
                            for (e in b)
                                if (!1 === c.apply(b[e], d))
                                    break
                    } else if (g)
                        for (; e < f && !1 !== c.call(b[e], e, b[e]); e++)
                            ;
                    else
                        for (e in b)
                            if (!1 === c.call(b[e], e, b[e]))
                                break;
                    return b
                },
                trim: function(a) {
                    return null == a ? "" : (a + "").replace(D, "")
                },
                makeArray: function(b, c) {
                    var d = c || [];
                    return null != b && (a(Object(b)) ? C.merge(d, "string" == typeof b ? [b] : b) : v.call(d, b)),
                        d
                },
                inArray: function(a, b, c) {
                    var d;
                    if (b) {
                        if (w)
                            return w.call(b, a, c);
                        for (d = b.length,
                                 c = c ? c < 0 ? Math.max(0, d + c) : c : 0; c < d; c++)
                            if (c in b && b[c] === a)
                                return c
                    }
                    return -1
                },
                merge: function(a, b) {
                    for (var c = +b.length, d = 0, e = a.length; d < c; )
                        a[e++] = b[d++];
                    if (c !== c)
                        for (; void 0 !== b[d]; )
                            a[e++] = b[d++];
                    return a.length = e,
                        a
                },
                grep: function(a, b, c) {
                    for (var d = [], e = 0, f = a.length, g = !c; e < f; e++)
                        !b(a[e], e) !== g && d.push(a[e]);
                    return d
                },
                map: function(b, c, d) {
                    var e, f = 0, g = b.length, h = a(b), i = [];
                    if (h)
                        for (; f < g; f++)
                            null != (e = c(b[f], f, d)) && i.push(e);
                    else
                        for (f in b)
                            null != (e = c(b[f], f, d)) && i.push(e);
                    return u.apply([], i)
                },
                guid: 1,
                proxy: function(a, b) {
                    var c, d, e;
                    if ("string" == typeof b && (e = a[b],
                        b = a,
                        a = e),
                        C.isFunction(a))
                        return c = t.call(arguments, 2),
                            d = function() {
                                return a.apply(b || this, c.concat(t.call(arguments)))
                            }
                            ,
                            d.guid = a.guid = a.guid || C.guid++,
                            d
                },
                now: function() {
                    return +new Date
                },
                support: A
            }),
            C.each("Boolean Number String Function Array Date RegExp Object Error".split(" "), function(a, b) {
                x["[object " + b + "]"] = b.toLowerCase()
            });
        var H, I = window.document, J = /^(?:\s*(<[\w\W]+>)[^>]*|#([\w-]*))$/;
        (C.fn.init = function(a, b) {
                var c, d;
                if (!a)
                    return this;
                if ("string" == typeof a) {
                    if (!(c = "<" === a.charAt(0) && ">" === a.charAt(a.length - 1) && a.length >= 3 ? [null, a, null] : J.exec(a)) || !c[1] && b)
                        return !b || b.jquery ? (b || H).find(a) : this.constructor(b).find(a);
                    if (c[1]) {
                        if (b = b instanceof C ? b[0] : b,
                            C.merge(this, C.parseHTML(c[1], b && b.nodeType ? b.ownerDocument || b : I, !0)),
                        rsingleTag.test(c[1]) && C.isPlainObject(b))
                            for (c in b)
                                C.isFunction(this[c]) ? this[c](b[c]) : this.attr(c, b[c]);
                        return this
                    }
                    if ((d = I.getElementById(c[2])) && d.parentNode) {
                        if (d.id !== c[2])
                            return H.find(a);
                        this.length = 1,
                            this[0] = d
                    }
                    return this.context = I,
                        this.selector = a,
                        this
                }
                return a.nodeType ? (this.context = this[0] = a,
                    this.length = 1,
                    this) : C.isFunction(a) ? void 0 !== H.ready ? H.ready(a) : a(C) : (void 0 !== a.selector && (this.selector = a.selector,
                    this.context = a.context),
                    C.makeArray(a, this))
            }
        ).prototype = C.fn,
            H = C(I);
        var K = /\S+/g
            , L = {};
        C.Callbacks = function(a) {
            a = "string" == typeof a ? L[a] || b(a) : C.extend({}, a);
            var c, d, e, f, g, h, i = [], j = !a.once && [], k = function(b) {
                for (d = a.memory && b,
                         e = !0,
                         g = h || 0,
                         h = 0,
                         f = i.length,
                         c = !0; i && g < f; g++)
                    if (!1 === i[g].apply(b[0], b[1]) && a.stopOnFalse) {
                        d = !1;
                        break
                    }
                c = !1,
                i && (j ? j.length && k(j.shift()) : d ? i = [] : l.disable())
            }, l = {
                add: function() {
                    if (i) {
                        var b = i.length;
                        !function b(c) {
                            C.each(c, function(c, d) {
                                var e = C.type(d);
                                "function" === e ? a.unique && l.has(d) || i.push(d) : d && d.length && "string" !== e && b(d)
                            })
                        }(arguments),
                            c ? f = i.length : d && (h = b,
                                k(d))
                    }
                    return this
                },
                remove: function() {
                    return i && C.each(arguments, function(a, b) {
                        for (var d; (d = C.inArray(b, i, d)) > -1; )
                            i.splice(d, 1),
                            c && (d <= f && f--,
                            d <= g && g--)
                    }),
                        this
                },
                has: function(a) {
                    return a ? C.inArray(a, i) > -1 : !(!i || !i.length)
                },
                empty: function() {
                    return i = [],
                        f = 0,
                        this
                },
                disable: function() {
                    return i = j = d = void 0,
                        this
                },
                disabled: function() {
                    return !i
                },
                lock: function() {
                    return j = void 0,
                    d || l.disable(),
                        this
                },
                locked: function() {
                    return !j
                },
                fireWith: function(a, b) {
                    return !i || e && !j || (b = b || [],
                        b = [a, b.slice ? b.slice() : b],
                        c ? j.push(b) : k(b)),
                        this
                },
                fire: function() {
                    return l.fireWith(this, arguments),
                        this
                },
                fired: function() {
                    return !!e
                }
            };
            return l
        }
            ,
            C.extend({
                Deferred: function(a) {
                    var b = [["resolve", "done", C.Callbacks("once memory"), "resolved"], ["reject", "fail", C.Callbacks("once memory"), "rejected"], ["notify", "progress", C.Callbacks("memory")]]
                        , c = "pending"
                        , d = {
                        state: function() {
                            return c
                        },
                        always: function() {
                            return e.done(arguments).fail(arguments),
                                this
                        },
                        then: function() {
                            var a = arguments;
                            return C.Deferred(function(c) {
                                C.each(b, function(b, f) {
                                    var g = C.isFunction(a[b]) && a[b];
                                    e[f[1]](function() {
                                        var a = g && g.apply(this, arguments);
                                        a && C.isFunction(a.promise) ? a.promise().done(c.resolve).fail(c.reject).progress(c.notify) : c[f[0] + "With"](this === d ? c.promise() : this, g ? [a] : arguments)
                                    })
                                }),
                                    a = null
                            }).promise()
                        },
                        promise: function(a) {
                            return null != a ? C.extend(a, d) : d
                        }
                    }
                        , e = {};
                    return d.pipe = d.then,
                        C.each(b, function(a, f) {
                            var g = f[2]
                                , h = f[3];
                            d[f[1]] = g.add,
                            h && g.add(function() {
                                c = h
                            }, b[1 ^ a][2].disable, b[2][2].lock),
                                e[f[0]] = function() {
                                    return e[f[0] + "With"](this === e ? d : this, arguments),
                                        this
                                }
                                ,
                                e[f[0] + "With"] = g.fireWith
                        }),
                        d.promise(e),
                    a && a.call(e, e),
                        e
                },
                when: function(a) {
                    var b, c, d, e = 0, f = t.call(arguments), g = f.length, h = 1 !== g || a && C.isFunction(a.promise) ? g : 0, i = 1 === h ? a : C.Deferred(), j = function(a, c, d) {
                        return function(e) {
                            c[a] = this,
                                d[a] = arguments.length > 1 ? t.call(arguments) : e,
                                d === b ? i.notifyWith(c, d) : --h || i.resolveWith(c, d)
                        }
                    };
                    if (g > 1)
                        for (b = new Array(g),
                                 c = new Array(g),
                                 d = new Array(g); e < g; e++)
                            f[e] && C.isFunction(f[e].promise) ? f[e].promise().done(j(e, d, f)).fail(i.reject).progress(j(e, c, b)) : --h;
                    return h || i.resolveWith(d, f),
                        i.promise()
                }
            });
        var M;
        C.fn.ready = function(a) {
            return C.ready.promise().done(a),
                this
        }
            ,
            C.extend({
                isReady: !1,
                readyWait: 1,
                holdReady: function(a) {
                    a ? C.readyWait++ : C.ready(!0)
                },
                ready: function(a) {
                    if (!0 === a ? !--C.readyWait : !C.isReady) {
                        if (!I.body)
                            return setTimeout(C.ready);
                        C.isReady = !0,
                        !0 !== a && --C.readyWait > 0 || (M.resolveWith(I, [C]),
                        C.fn.triggerHandler && (C(I).triggerHandler("ready"),
                            C(I).off("ready")))
                    }
                }
            }),
            C.ready.promise = function(a) {
                if (!M)
                    if (M = C.Deferred(),
                    "complete" === I.readyState)
                        setTimeout(C.ready);
                    else if (I.addEventListener)
                        I.addEventListener("DOMContentLoaded", d, !1),
                            window.addEventListener("load", d, !1);
                    else {
                        I.attachEvent("onreadystatechange", d),
                            window.attachEvent("onload", d);
                        var b = !1;
                        try {
                            b = null == window.frameElement && I.documentElement
                        } catch (a) {}
                        b && b.doScroll && function a() {
                            if (!C.isReady) {
                                try {
                                    b.doScroll("left")
                                } catch (b) {
                                    return setTimeout(a, 50)
                                }
                                c(),
                                    C.ready()
                            }
                        }()
                    }
                return M.promise(a)
            }
        ;
        var N, O = "undefined";
        for (N in C(A))
            break;
        A.ownLast = "0" !== N,
            A.inlineBlockNeedsLayout = !1,
            C(function() {
                var a, b, c, d;
                (c = I.getElementsByTagName("body")[0]) && c.style && (b = I.createElement("div"),
                    d = I.createElement("div"),
                    d.style.cssText = "position:absolute;border:0;width:0;height:0;top:0;left:-9999px",
                    c.appendChild(d).appendChild(b),
                typeof b.style.zoom !== O && (b.style.cssText = "display:inline;margin:0;border:0;padding:1px;width:1px;zoom:1",
                    A.inlineBlockNeedsLayout = a = 3 === b.offsetWidth,
                a && (c.style.zoom = 1)),
                    c.removeChild(d))
            }),
            function() {
                var a = I.createElement("div");
                if (null == A.deleteExpando) {
                    A.deleteExpando = !0;
                    try {
                        delete a.test
                    } catch (a) {
                        A.deleteExpando = !1
                    }
                }
                a = null
            }(),
            C.acceptData = function(a) {
                var b = C.noData[(a.nodeName + " ").toLowerCase()]
                    , c = +a.nodeType || 1;
                return (1 === c || 9 === c) && (!b || !0 !== b && a.getAttribute("classid") === b)
            }
        ;
        var P = /^(?:\{[\w\W]*\}|\[[\w\W]*\])$/
            , Q = /([A-Z])/g;
        C.extend({
            cache: {},
            noData: {
                "applet ": !0,
                "embed ": !0,
                "object ": "clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"
            },
            hasData: function(a) {
                return !!(a = a.nodeType ? C.cache[a[C.expando]] : a[C.expando]) && !f(a)
            },
            data: function(a, b, c) {
                return g(a, b, c)
            },
            removeData: function(a, b) {
                return h(a, b)
            },
            _data: function(a, b, c) {
                return g(a, b, c, !0)
            },
            _removeData: function(a, b) {
                return h(a, b, !0)
            }
        }),
            C.fn.extend({
                data: function(a, b) {
                    var c, d, f, g = this[0], h = g && g.attributes;
                    if (void 0 === a) {
                        if (this.length && (f = C.data(g),
                        1 === g.nodeType && !C._data(g, "parsedAttrs"))) {
                            for (c = h.length; c--; )
                                h[c] && (d = h[c].name,
                                0 === d.indexOf("data-") && (d = C.camelCase(d.slice(5)),
                                    e(g, d, f[d])));
                            C._data(g, "parsedAttrs", !0)
                        }
                        return f
                    }
                    return "object" == typeof a ? this.each(function() {
                        C.data(this, a)
                    }) : arguments.length > 1 ? this.each(function() {
                        C.data(this, a, b)
                    }) : g ? e(g, a, C.data(g, a)) : void 0
                },
                removeData: function(a) {
                    return this.each(function() {
                        C.removeData(this, a)
                    })
                }
            }),
            C.extend({
                queue: function(a, b, c) {
                    var d;
                    if (a)
                        return b = (b || "fx") + "queue",
                            d = C._data(a, b),
                        c && (!d || C.isArray(c) ? d = C._data(a, b, C.makeArray(c)) : d.push(c)),
                        d || []
                },
                dequeue: function(a, b) {
                    b = b || "fx";
                    var c = C.queue(a, b)
                        , d = c.length
                        , e = c.shift()
                        , f = C._queueHooks(a, b)
                        , g = function() {
                        C.dequeue(a, b)
                    };
                    "inprogress" === e && (e = c.shift(),
                        d--),
                    e && ("fx" === b && c.unshift("inprogress"),
                        delete f.stop,
                        e.call(a, g, f)),
                    !d && f && f.empty.fire()
                },
                _queueHooks: function(a, b) {
                    var c = b + "queueHooks";
                    return C._data(a, c) || C._data(a, c, {
                        empty: C.Callbacks("once memory").add(function() {
                            C._removeData(a, b + "queue"),
                                C._removeData(a, c)
                        })
                    })
                }
            }),
            C.fn.extend({
                queue: function(a, b) {
                    var c = 2;
                    return "string" != typeof a && (b = a,
                        a = "fx",
                        c--),
                        arguments.length < c ? C.queue(this[0], a) : void 0 === b ? this : this.each(function() {
                            var c = C.queue(this, a, b);
                            C._queueHooks(this, a),
                            "fx" === a && "inprogress" !== c[0] && C.dequeue(this, a)
                        })
                },
                dequeue: function(a) {
                    return this.each(function() {
                        C.dequeue(this, a)
                    })
                },
                clearQueue: function(a) {
                    return this.queue(a || "fx", [])
                },
                promise: function(a, b) {
                    var c, d = 1, e = C.Deferred(), f = this, g = this.length, h = function() {
                        --d || e.resolveWith(f, [f])
                    };
                    for ("string" != typeof a && (b = a,
                        a = void 0),
                             a = a || "fx"; g--; )
                        (c = C._data(f[g], a + "queueHooks")) && c.empty && (d++,
                            c.empty.add(h));
                    return h(),
                        e.promise(b)
                }
            }),
            C.event = {
                global: {},
                add: function(a, b, c, d, e) {
                    var f, g, h, i, j, k, l, m, n, o, p, q = C._data(a);
                    if (q) {
                        for (c.handler && (i = c,
                            c = i.handler,
                            e = i.selector),
                             c.guid || (c.guid = C.guid++),
                             (g = q.events) || (g = q.events = {}),
                             (k = q.handle) || (k = q.handle = function(a) {
                                 return typeof C === O || a && C.event.triggered === a.type ? void 0 : C.event.dispatch.apply(k.elem, arguments)
                             }
                                 ,
                                 k.elem = a),
                                 b = (b || "").match(K) || [""],
                                 h = b.length; h--; )
                            f = V.exec(b[h]) || [],
                                n = p = f[1],
                                o = (f[2] || "").split(".").sort(),
                            n && (j = C.event.special[n] || {},
                                n = (e ? j.delegateType : j.bindType) || n,
                                j = C.event.special[n] || {},
                                l = C.extend({
                                    type: n,
                                    origType: p,
                                    data: d,
                                    handler: c,
                                    guid: c.guid,
                                    selector: e,
                                    needsContext: e && C.expr.match.needsContext.test(e),
                                    namespace: o.join(".")
                                }, i),
                            (m = g[n]) || (m = g[n] = [],
                                m.delegateCount = 0,
                            j.setup && !1 !== j.setup.call(a, d, o, k) || (a.addEventListener ? a.addEventListener(n, k, !1) : a.attachEvent && a.attachEvent("on" + n, k))),
                            j.add && (j.add.call(a, l),
                            l.handler.guid || (l.handler.guid = c.guid)),
                                e ? m.splice(m.delegateCount++, 0, l) : m.push(l),
                                C.event.global[n] = !0);
                        a = null
                    }
                },
                remove: function(a, b, c, d, e) {
                    var f, g, h, i, j, k, l, m, n, o, p, q = C.hasData(a) && C._data(a);
                    if (q && (k = q.events)) {
                        for (b = (b || "").match(K) || [""],
                                 j = b.length; j--; )
                            if (h = V.exec(b[j]) || [],
                                n = p = h[1],
                                o = (h[2] || "").split(".").sort(),
                                n) {
                                for (l = C.event.special[n] || {},
                                         n = (d ? l.delegateType : l.bindType) || n,
                                         m = k[n] || [],
                                         h = h[2] && new RegExp("(^|\\.)" + o.join("\\.(?:.*\\.|)") + "(\\.|$)"),
                                         i = f = m.length; f--; )
                                    g = m[f],
                                    !e && p !== g.origType || c && c.guid !== g.guid || h && !h.test(g.namespace) || d && d !== g.selector && ("**" !== d || !g.selector) || (m.splice(f, 1),
                                    g.selector && m.delegateCount--,
                                    l.remove && l.remove.call(a, g));
                                i && !m.length && (l.teardown && !1 !== l.teardown.call(a, o, q.handle) || C.removeEvent(a, n, q.handle),
                                    delete k[n])
                            } else
                                for (n in k)
                                    C.event.remove(a, n + b[j], c, d, !0);
                        C.isEmptyObject(k) && (delete q.handle,
                            C._removeData(a, "events"))
                    }
                },
                trigger: function(a, b, c, d) {
                    var e, f, g, h, i, j, k, l = [c || I], m = z.call(a, "type") ? a.type : a, n = z.call(a, "namespace") ? a.namespace.split(".") : [];
                    if (g = j = c = c || I,
                    3 !== c.nodeType && 8 !== c.nodeType && !U.test(m + C.event.triggered) && (m.indexOf(".") >= 0 && (n = m.split("."),
                        m = n.shift(),
                        n.sort()),
                        f = m.indexOf(":") < 0 && "on" + m,
                        a = a[C.expando] ? a : new C.Event(m,"object" == typeof a && a),
                        a.isTrigger = d ? 2 : 3,
                        a.namespace = n.join("."),
                        a.namespace_re = a.namespace ? new RegExp("(^|\\.)" + n.join("\\.(?:.*\\.|)") + "(\\.|$)") : null,
                        a.result = void 0,
                    a.target || (a.target = c),
                        b = null == b ? [a] : C.makeArray(b, [a]),
                        i = C.event.special[m] || {},
                    d || !i.trigger || !1 !== i.trigger.apply(c, b))) {
                        if (!d && !i.noBubble && !C.isWindow(c)) {
                            for (h = i.delegateType || m,
                                 U.test(h + m) || (g = g.parentNode); g; g = g.parentNode)
                                l.push(g),
                                    j = g;
                            j === (c.ownerDocument || I) && l.push(j.defaultView || j.parentWindow || window)
                        }
                        for (k = 0; (g = l[k++]) && !a.isPropagationStopped(); )
                            a.type = k > 1 ? h : i.bindType || m,
                                e = (C._data(g, "events") || {})[a.type] && C._data(g, "handle"),
                            e && e.apply(g, b),
                            (e = f && g[f]) && e.apply && C.acceptData(g) && (a.result = e.apply(g, b),
                            !1 === a.result && a.preventDefault());
                        if (a.type = m,
                        !d && !a.isDefaultPrevented() && (!i._default || !1 === i._default.apply(l.pop(), b)) && C.acceptData(c) && f && c[m] && !C.isWindow(c)) {
                            j = c[f],
                            j && (c[f] = null),
                                C.event.triggered = m;
                            try {
                                c[m]()
                            } catch (a) {}
                            C.event.triggered = void 0,
                            j && (c[f] = j)
                        }
                        return a.result
                    }
                },
                dispatch: function(a) {
                    a = C.event.fix(a);
                    var b, c, d, e, f, g = [], h = t.call(arguments), i = (C._data(this, "events") || {})[a.type] || [], j = C.event.special[a.type] || {};
                    if (h[0] = a,
                        a.delegateTarget = this,
                    !j.preDispatch || !1 !== j.preDispatch.call(this, a)) {
                        for (g = C.event.handlers.call(this, a, i),
                                 b = 0; (e = g[b++]) && !a.isPropagationStopped(); )
                            for (a.currentTarget = e.elem,
                                     f = 0; (d = e.handlers[f++]) && !a.isImmediatePropagationStopped(); )
                                a.namespace_re && !a.namespace_re.test(d.namespace) || (a.handleObj = d,
                                    a.data = d.data,
                                void 0 !== (c = ((C.event.special[d.origType] || {}).handle || d.handler).apply(e.elem, h)) && !1 === (a.result = c) && (a.preventDefault(),
                                    a.stopPropagation()));
                        return j.postDispatch && j.postDispatch.call(this, a),
                            a.result
                    }
                },
                handlers: function(a, b) {
                    var c, d, e, f, g = [], h = b.delegateCount, i = a.target;
                    if (h && i.nodeType && (!a.button || "click" !== a.type))
                        for (; i != this; i = i.parentNode || this)
                            if (1 === i.nodeType && (!0 !== i.disabled || "click" !== a.type)) {
                                for (e = [],
                                         f = 0; f < h; f++)
                                    d = b[f],
                                        c = d.selector + " ",
                                    void 0 === e[c] && (e[c] = d.needsContext ? C(c, this).index(i) >= 0 : C.find(c, this, null, [i]).length),
                                    e[c] && e.push(d);
                                e.length && g.push({
                                    elem: i,
                                    handlers: e
                                })
                            }
                    return h < b.length && g.push({
                        elem: this,
                        handlers: b.slice(h)
                    }),
                        g
                },
                fix: function(a) {
                    if (a[C.expando])
                        return a;
                    var b, c, d, e = a.type, f = a, g = this.fixHooks[e];
                    for (g || (this.fixHooks[e] = g = T.test(e) ? this.mouseHooks : S.test(e) ? this.keyHooks : {}),
                             d = g.props ? this.props.concat(g.props) : this.props,
                             a = new C.Event(f),
                             b = d.length; b--; )
                        c = d[b],
                            a[c] = f[c];
                    return a.target || (a.target = f.srcElement || I),
                    3 === a.target.nodeType && (a.target = a.target.parentNode),
                        a.metaKey = !!a.metaKey,
                        g.filter ? g.filter(a, f) : a
                },
                props: "altKey bubbles cancelable ctrlKey currentTarget eventPhase metaKey relatedTarget shiftKey target timeStamp view which".split(" "),
                fixHooks: {},
                keyHooks: {
                    props: "char charCode key keyCode".split(" "),
                    filter: function(a, b) {
                        return null == a.which && (a.which = null != b.charCode ? b.charCode : b.keyCode),
                            a
                    }
                },
                mouseHooks: {
                    props: "button buttons clientX clientY fromElement offsetX offsetY pageX pageY screenX screenY toElement".split(" "),
                    filter: function(a, b) {
                        var c, d, e, f = b.button, g = b.fromElement;
                        return null == a.pageX && null != b.clientX && (d = a.target.ownerDocument || I,
                            e = d.documentElement,
                            c = d.body,
                            a.pageX = b.clientX + (e && e.scrollLeft || c && c.scrollLeft || 0) - (e && e.clientLeft || c && c.clientLeft || 0),
                            a.pageY = b.clientY + (e && e.scrollTop || c && c.scrollTop || 0) - (e && e.clientTop || c && c.clientTop || 0)),
                        !a.relatedTarget && g && (a.relatedTarget = g === a.target ? b.toElement : g),
                        a.which || void 0 === f || (a.which = 1 & f ? 1 : 2 & f ? 3 : 4 & f ? 2 : 0),
                            a
                    }
                },
                special: {
                    load: {
                        noBubble: !0
                    },
                    focus: {
                        trigger: function() {
                            if (this !== safeActiveElement() && this.focus)
                                try {
                                    return this.focus(),
                                        !1
                                } catch (a) {}
                        },
                        delegateType: "focusin"
                    },
                    blur: {
                        trigger: function() {
                            if (this === safeActiveElement() && this.blur)
                                return this.blur(),
                                    !1
                        },
                        delegateType: "focusout"
                    },
                    click: {
                        trigger: function() {
                            if (C.nodeName(this, "input") && "checkbox" === this.type && this.click)
                                return this.click(),
                                    !1
                        },
                        _default: function(a) {
                            return C.nodeName(a.target, "a")
                        }
                    },
                    beforeunload: {
                        postDispatch: function(a) {
                            void 0 !== a.result && a.originalEvent && (a.originalEvent.returnValue = a.result)
                        }
                    }
                },
                simulate: function(a, b, c, d) {
                    var e = C.extend(new C.Event, c, {
                        type: a,
                        isSimulated: !0,
                        originalEvent: {}
                    });
                    d ? C.event.trigger(e, null, b) : C.event.dispatch.call(b, e),
                    e.isDefaultPrevented() && c.preventDefault()
                }
            },
            C.removeEvent = I.removeEventListener ? function(a, b, c) {
                    a.removeEventListener && a.removeEventListener(b, c, !1)
                }
                : function(a, b, c) {
                    var d = "on" + b;
                    a.detachEvent && (typeof a[d] === O && (a[d] = null),
                        a.detachEvent(d, c))
                }
            ,
            C.Event = function(a, b) {
                return this instanceof C.Event ? (a && a.type ? (this.originalEvent = a,
                    this.type = a.type,
                    this.isDefaultPrevented = a.defaultPrevented || void 0 === a.defaultPrevented && !1 === a.returnValue ? i : j) : this.type = a,
                b && C.extend(this, b),
                    this.timeStamp = a && a.timeStamp || C.now(),
                    void (this[C.expando] = !0)) : new C.Event(a,b)
            }
        ;
        var R = /^(?:input|select|textarea)$/i
            , S = /^key/
            , T = /^(?:mouse|pointer|contextmenu)|click/
            , U = /^(?:focusinfocus|focusoutblur)$/
            , V = /^([^.]*)(?:\.(.+)|)$/;
        C.Event.prototype = {
            isDefaultPrevented: j,
            isPropagationStopped: j,
            isImmediatePropagationStopped: j,
            preventDefault: function() {
                var a = this.originalEvent;
                this.isDefaultPrevented = i,
                a && (a.preventDefault ? a.preventDefault() : a.returnValue = !1)
            },
            stopPropagation: function() {
                var a = this.originalEvent;
                this.isPropagationStopped = i,
                a && (a.stopPropagation && a.stopPropagation(),
                    a.cancelBubble = !0)
            },
            stopImmediatePropagation: function() {
                var a = this.originalEvent;
                this.isImmediatePropagationStopped = i,
                a && a.stopImmediatePropagation && a.stopImmediatePropagation(),
                    this.stopPropagation()
            }
        },
        A.submitBubbles || (C.event.special.submit = {
            setup: function() {
                return !C.nodeName(this, "form") && void C.event.add(this, "click._submit keypress._submit", function(a) {
                    var b = a.target
                        , c = C.nodeName(b, "input") || C.nodeName(b, "button") ? b.form : void 0;
                    c && !C._data(c, "submitBubbles") && (C.event.add(c, "submit._submit", function(a) {
                        a._submit_bubble = !0
                    }),
                        C._data(c, "submitBubbles", !0))
                })
            },
            postDispatch: function(a) {
                a._submit_bubble && (delete a._submit_bubble,
                this.parentNode && !a.isTrigger && C.event.simulate("submit", this.parentNode, a, !0))
            },
            teardown: function() {
                return !C.nodeName(this, "form") && void C.event.remove(this, "._submit")
            }
        }),
        A.changeBubbles || (C.event.special.change = {
            setup: function() {
                return R.test(this.nodeName) ? ("checkbox" !== this.type && "radio" !== this.type || (C.event.add(this, "propertychange._change", function(a) {
                    "checked" === a.originalEvent.propertyName && (this._just_changed = !0)
                }),
                    C.event.add(this, "click._change", function(a) {
                        this._just_changed && !a.isTrigger && (this._just_changed = !1),
                            C.event.simulate("change", this, a, !0)
                    })),
                    !1) : void C.event.add(this, "beforeactivate._change", function(a) {
                    var b = a.target;
                    R.test(b.nodeName) && !C._data(b, "changeBubbles") && (C.event.add(b, "change._change", function(a) {
                        !this.parentNode || a.isSimulated || a.isTrigger || C.event.simulate("change", this.parentNode, a, !0)
                    }),
                        C._data(b, "changeBubbles", !0))
                })
            },
            handle: function(a) {
                var b = a.target;
                if (this !== b || a.isSimulated || a.isTrigger || "radio" !== b.type && "checkbox" !== b.type)
                    return a.handleObj.handler.apply(this, arguments)
            },
            teardown: function() {
                return C.event.remove(this, "._change"),
                    !R.test(this.nodeName)
            }
        }),
        A.focusinBubbles || C.each({
            focus: "focusin",
            blur: "focusout"
        }, function(a, b) {
            var c = function(a) {
                C.event.simulate(b, a.target, C.event.fix(a), !0)
            };
            C.event.special[b] = {
                setup: function() {
                    var d = this.ownerDocument || this
                        , e = C._data(d, b);
                    e || d.addEventListener(a, c, !0),
                        C._data(d, b, (e || 0) + 1)
                },
                teardown: function() {
                    var d = this.ownerDocument || this
                        , e = C._data(d, b) - 1;
                    e ? C._data(d, b, e) : (d.removeEventListener(a, c, !0),
                        C._removeData(d, b))
                }
            }
        }),
            C.fn.extend({
                on: function(a, b, c, d, e) {
                    var f, g;
                    if ("object" == typeof a) {
                        "string" != typeof b && (c = c || b,
                            b = void 0);
                        for (f in a)
                            this.on(f, b, c, a[f], e);
                        return this
                    }
                    if (null == c && null == d ? (d = b,
                        c = b = void 0) : null == d && ("string" == typeof b ? (d = c,
                        c = void 0) : (d = c,
                        c = b,
                        b = void 0)),
                    !1 === d)
                        d = j;
                    else if (!d)
                        return this;
                    return 1 === e && (g = d,
                        d = function(a) {
                            return C().off(a),
                                g.apply(this, arguments)
                        }
                        ,
                        d.guid = g.guid || (g.guid = C.guid++)),
                        this.each(function() {
                            C.event.add(this, a, d, c, b)
                        })
                },
                one: function(a, b, c, d) {
                    return this.on(a, b, c, d, 1)
                },
                off: function(a, b, c) {
                    var d, e;
                    if (a && a.preventDefault && a.handleObj)
                        return d = a.handleObj,
                            C(a.delegateTarget).off(d.namespace ? d.origType + "." + d.namespace : d.origType, d.selector, d.handler),
                            this;
                    if ("object" == typeof a) {
                        for (e in a)
                            this.off(e, b, a[e]);
                        return this
                    }
                    return !1 !== b && "function" != typeof b || (c = b,
                        b = void 0),
                    !1 === c && (c = j),
                        this.each(function() {
                            C.event.remove(this, a, c, b)
                        })
                },
                trigger: function(a, b) {
                    return this.each(function() {
                        C.event.trigger(a, b, this)
                    })
                },
                triggerHandler: function(a, b) {
                    var c = this[0];
                    if (c)
                        return C.event.trigger(a, b, c, !0)
                }
            }),
            C.fn.delay = function(a, b) {
                return a = C.fx ? C.fx.speeds[a] || a : a,
                    b = b || "fx",
                    this.queue(b, function(b, c) {
                        var d = setTimeout(b, a);
                        c.stop = function() {
                            clearTimeout(d)
                        }
                    })
            }
        ;
        var W = C.now()
            , X = /\?/
            , Y = /(,)|(\[|{)|(}|])|"(?:[^"\\\r\n]|\\["\\\/bfnrt]|\\u[\da-fA-F]{4})*"\s*:?|true|false|null|-?(?!0\d)\d+(?:\.\d+|)(?:[eE][+-]?\d+|)/g;
        C.parseJSON = function(a) {
            if (window.JSON && window.JSON.parse)
                return window.JSON.parse(a + "");
            var b, c = null, d = C.trim(a + "");
            return d && !C.trim(d.replace(Y, function(a, d, e, f) {
                return b && d && (c = 0),
                    0 === c ? a : (b = e || d,
                        c += !f - !e,
                        "")
            })) ? Function("return " + d)() : C.error("Invalid JSON: " + a)
        }
            ,
            C.parseXML = function(a) {
                var b, c;
                if (!a || "string" != typeof a)
                    return null;
                try {
                    window.DOMParser ? (c = new DOMParser,
                        b = c.parseFromString(a, "text/xml")) : (b = new ActiveXObject("Microsoft.XMLDOM"),
                        b.async = "false",
                        b.loadXML(a))
                } catch (a) {
                    b = void 0
                }
                return b && b.documentElement && !b.getElementsByTagName("parsererror").length || C.error("Invalid XML: " + a),
                    b
            }
        ;
        var Z, $, _ = /#.*$/, aa = /([?&])_=[^&]*/, ba = /^(.*?):[ \t]*([^\r\n]*)\r?$/gm, ca = /^(?:about|app|app-storage|.+-extension|file|res|widget):$/, da = /^(?:GET|HEAD)$/, ea = /^\/\//, fa = /^([\w.+-]+:)(?:\/\/(?:[^\/?#]*@|)([^\/?#:]*)(?::(\d+)|)|)/, ga = {}, ha = {}, ia = "*/".concat("*");
        try {
            $ = location.href
        } catch (a) {
            $ = I.createElement("a"),
                $.href = "",
                $ = $.href
        }
        Z = fa.exec($.toLowerCase()) || [],
            C.extend({
                active: 0,
                lastModified: {},
                etag: {},
                ajaxSettings: {
                    url: $,
                    type: "GET",
                    isLocal: ca.test(Z[1]),
                    global: !0,
                    processData: !0,
                    async: !0,
                    contentType: "application/x-www-form-urlencoded; charset=UTF-8",
                    accepts: {
                        "*": ia,
                        text: "text/plain",
                        html: "text/html",
                        xml: "application/xml, text/xml",
                        json: "application/json, text/javascript"
                    },
                    contents: {
                        xml: /xml/,
                        html: /html/,
                        json: /json/
                    },
                    responseFields: {
                        xml: "responseXML",
                        text: "responseText",
                        json: "responseJSON"
                    },
                    converters: {
                        "* text": String,
                        "text html": !0,
                        "text json": C.parseJSON,
                        "text xml": C.parseXML
                    },
                    flatOptions: {
                        url: !0,
                        context: !0
                    }
                },
                ajaxSetup: function(a, b) {
                    return b ? m(m(a, C.ajaxSettings), b) : m(C.ajaxSettings, a)
                },
                ajaxPrefilter: k(ga),
                ajaxTransport: k(ha),
                ajax: function(a, b) {
                    function c(a, b, c, d) {
                        var e, k, l, u, v, x = b;
                        2 !== w && (w = 2,
                        h && clearTimeout(h),
                            j = void 0,
                            g = d || "",
                            y.readyState = a > 0 ? 4 : 0,
                            e = a >= 200 && a < 300 || 304 === a,
                        c && (u = n(m, y, c)),
                            u = o(m, u, y, e),
                            e ? (m.ifModified && (v = y.getResponseHeader("Last-Modified"),
                            v && (C.lastModified[f] = v),
                            (v = y.getResponseHeader("etag")) && (C.etag[f] = v)),
                                204 === a || "HEAD" === m.type ? x = "nocontent" : 304 === a ? x = "notmodified" : (x = u.state,
                                    k = u.data,
                                    l = u.error,
                                    e = !l)) : (l = x,
                            !a && x || (x = "error",
                            a < 0 && (a = 0))),
                            y.status = a,
                            y.statusText = (b || x) + "",
                            e ? r.resolveWith(p, [k, x, y]) : r.rejectWith(p, [y, x, l]),
                            y.statusCode(t),
                            t = void 0,
                        i && q.trigger(e ? "ajaxSuccess" : "ajaxError", [y, m, e ? k : l]),
                            s.fireWith(p, [y, x]),
                        i && (q.trigger("ajaxComplete", [y, m]),
                        --C.active || C.event.trigger("ajaxStop")))
                    }
                    "object" == typeof a && (b = a,
                        a = void 0),
                        b = b || {};
                    var d, e, f, g, h, i, j, k, m = C.ajaxSetup({}, b), p = m.context || m, q = m.context && (p.nodeType || p.jquery) ? C(p) : C.event, r = C.Deferred(), s = C.Callbacks("once memory"), t = m.statusCode || {}, u = {}, v = {}, w = 0, x = "canceled", y = {
                        readyState: 0,
                        getResponseHeader: function(a) {
                            var b;
                            if (2 === w) {
                                if (!k)
                                    for (k = {}; b = ba.exec(g); )
                                        k[b[1].toLowerCase()] = b[2];
                                b = k[a.toLowerCase()]
                            }
                            return null == b ? null : b
                        },
                        getAllResponseHeaders: function() {
                            return 2 === w ? g : null
                        },
                        setRequestHeader: function(a, b) {
                            var c = a.toLowerCase();
                            return w || (a = v[c] = v[c] || a,
                                u[a] = b),
                                this
                        },
                        overrideMimeType: function(a) {
                            return w || (m.mimeType = a),
                                this
                        },
                        statusCode: function(a) {
                            var b;
                            if (a)
                                if (w < 2)
                                    for (b in a)
                                        t[b] = [t[b], a[b]];
                                else
                                    y.always(a[y.status]);
                            return this
                        },
                        abort: function(a) {
                            var b = a || x;
                            return j && j.abort(b),
                                c(0, b),
                                this
                        }
                    };
                    if (r.promise(y).complete = s.add,
                        y.success = y.done,
                        y.error = y.fail,
                        m.url = ((a || m.url || $) + "").replace(_, "").replace(ea, Z[1] + "//"),
                        m.type = b.method || b.type || m.method || m.type,
                        m.dataTypes = C.trim(m.dataType || "*").toLowerCase().match(K) || [""],
                    null == m.crossDomain && (d = fa.exec(m.url.toLowerCase()),
                        m.crossDomain = !(!d || d[1] === Z[1] && d[2] === Z[2] && (d[3] || ("http:" === d[1] ? "80" : "443")) === (Z[3] || ("http:" === Z[1] ? "80" : "443")))),
                    m.data && m.processData && "string" != typeof m.data && (m.data = C.param(m.data, m.traditional)),
                        l(ga, m, b, y),
                    2 === w)
                        return y;
                    i = m.global,
                    i && 0 == C.active++ && C.event.trigger("ajaxStart"),
                        m.type = m.type.toUpperCase(),
                        m.hasContent = !da.test(m.type),
                        f = m.url,
                    m.hasContent || (m.data && (f = m.url += (X.test(f) ? "&" : "?") + m.data,
                        delete m.data),
                    !1 === m.cache && (m.url = aa.test(f) ? f.replace(aa, "$1_=" + W++) : f + (X.test(f) ? "&" : "?") + "_=" + W++)),
                    m.ifModified && (C.lastModified[f] && y.setRequestHeader("If-Modified-Since", C.lastModified[f]),
                    C.etag[f] && y.setRequestHeader("If-None-Match", C.etag[f])),
                    (m.data && m.hasContent && !1 !== m.contentType || b.contentType) && y.setRequestHeader("Content-Type", m.contentType),
                        y.setRequestHeader("Accept", m.dataTypes[0] && m.accepts[m.dataTypes[0]] ? m.accepts[m.dataTypes[0]] + ("*" !== m.dataTypes[0] ? ", " + ia + "; q=0.01" : "") : m.accepts["*"]);
                    for (e in m.headers)
                        y.setRequestHeader(e, m.headers[e]);
                    if (m.beforeSend && (!1 === m.beforeSend.call(p, y, m) || 2 === w))
                        return y.abort();
                    x = "abort";
                    for (e in {
                        success: 1,
                        error: 1,
                        complete: 1
                    })
                        y[e](m[e]);
                    if (j = l(ha, m, b, y)) {
                        y.readyState = 1,
                        i && q.trigger("ajaxSend", [y, m]),
                        m.async && m.timeout > 0 && (h = setTimeout(function() {
                            y.abort("timeout")
                        }, m.timeout));
                        try {
                            w = 1,
                                j.send(u, c)
                        } catch (a) {
                            if (!(w < 2))
                                throw a;
                            c(-1, a)
                        }
                    } else
                        c(-1, "No Transport");
                    return y
                },
                getJSON: function(a, b, c) {
                    return C.get(a, b, c, "json")
                },
                getScript: function(a, b) {
                    return C.get(a, void 0, b, "script")
                }
            }),
            C.each(["get", "post"], function(a, b) {
                C[b] = function(a, c, d, e) {
                    return C.isFunction(c) && (e = e || d,
                        d = c,
                        c = void 0),
                        C.ajax({
                            url: a,
                            type: b,
                            dataType: e,
                            data: c,
                            success: d
                        })
                }
            }),
            C.each(["ajaxStart", "ajaxStop", "ajaxComplete", "ajaxError", "ajaxSuccess", "ajaxSend"], function(a, b) {
                C.fn[b] = function(a) {
                    return this.on(b, a)
                }
            }),
            C._evalUrl = function(a) {
                return C.ajax({
                    url: a,
                    type: "GET",
                    dataType: "script",
                    async: !1,
                    global: !1,
                    throws: !0
                })
            }
        ;
        var ja = /%20/g
            , ka = /\[\]$/
            , la = /\r?\n/g
            , ma = /^(?:submit|button|image|reset|file)$/i
            , na = /^(?:input|select|textarea|keygen)/i;
        C.param = function(a, b) {
            var c, d = [], e = function(a, b) {
                b = C.isFunction(b) ? b() : null == b ? "" : b,
                    d[d.length] = encodeURIComponent(a) + "=" + encodeURIComponent(b)
            };
            if (void 0 === b && (b = C.ajaxSettings && C.ajaxSettings.traditional),
            C.isArray(a) || a.jquery && !C.isPlainObject(a))
                C.each(a, function() {
                    e(this.name, this.value)
                });
            else
                for (c in a)
                    p(c, a[c], b, e);
            return d.join("&").replace(ja, "+")
        }
            ,
            C.fn.extend({
                serialize: function() {
                    return C.param(this.serializeArray())
                },
                serializeArray: function() {
                    return this.map(function() {
                        var a = C.prop(this, "elements");
                        return a ? C.makeArray(a) : this
                    }).filter(function() {
                        var a = this.type;
                        return this.name && !C(this).is(":disabled") && na.test(this.nodeName) && !ma.test(a) && (this.checked || !rcheckableType.test(a))
                    }).map(function(a, b) {
                        var c = C(this).val();
                        return null == c ? null : C.isArray(c) ? C.map(c, function(a) {
                            return {
                                name: b.name,
                                value: a.replace(la, "\r\n")
                            }
                        }) : {
                            name: b.name,
                            value: c.replace(la, "\r\n")
                        }
                    }).get()
                }
            }),
            C.ajaxSettings.xhr = void 0 !== window.ActiveXObject ? function() {
                    return !this.isLocal && /^(get|post|head|put|delete|options)$/i.test(this.type) && q() || r()
                }
                : q;
        var oa = 0
            , pa = {}
            , qa = C.ajaxSettings.xhr();
        window.ActiveXObject && C(window).on("unload", function() {
            for (var a in pa)
                pa[a](void 0, !0)
        }),
            A.cors = !!qa && "withCredentials"in qa,
            qa = A.ajax = !!qa,
        qa && C.ajaxTransport(function(a) {
            if (!a.crossDomain || A.cors) {
                var b;
                return {
                    send: function(c, d) {
                        var e, f = a.xhr(), g = ++oa;
                        if (f.open(a.type, a.url, a.async, a.username, a.password),
                            a.xhrFields)
                            for (e in a.xhrFields)
                                f[e] = a.xhrFields[e];
                        a.mimeType && f.overrideMimeType && f.overrideMimeType(a.mimeType),
                        a.crossDomain || c["X-Requested-With"] || (c["X-Requested-With"] = "XMLHttpRequest");
                        for (e in c)
                            void 0 !== c[e] && f.setRequestHeader(e, c[e] + "");
                        f.send(a.hasContent && a.data || null),
                            b = function(c, e) {
                                var h, i, j;
                                if (b && (e || 4 === f.readyState))
                                    if (delete pa[g],
                                        b = void 0,
                                        f.onreadystatechange = C.noop,
                                        e)
                                        4 !== f.readyState && f.abort();
                                    else {
                                        j = {},
                                            h = f.status,
                                        "string" == typeof f.responseText && (j.text = f.responseText);
                                        try {
                                            i = f.statusText
                                        } catch (a) {
                                            i = ""
                                        }
                                        h || !a.isLocal || a.crossDomain ? 1223 === h && (h = 204) : h = j.text ? 200 : 404
                                    }
                                j && d(h, i, j, f.getAllResponseHeaders())
                            }
                            ,
                            a.async ? 4 === f.readyState ? setTimeout(b) : f.onreadystatechange = pa[g] = b : b()
                    },
                    abort: function() {
                        b && b(void 0, !0)
                    }
                }
            }
        }),
            C.ajaxSetup({
                accepts: {
                    script: "text/javascript, application/javascript, application/ecmascript, application/x-ecmascript"
                },
                contents: {
                    script: /(?:java|ecma)script/
                },
                converters: {
                    "text script": function(a) {
                        return C.globalEval(a),
                            a
                    }
                }
            }),
            C.ajaxPrefilter("script", function(a) {
                void 0 === a.cache && (a.cache = !1),
                a.crossDomain && (a.type = "GET",
                    a.global = !1)
            }),
            C.ajaxTransport("script", function(a) {
                if (a.crossDomain) {
                    var b, c = I.head || C("head")[0] || I.documentElement;
                    return {
                        send: function(d, e) {
                            b = I.createElement("script"),
                                b.async = !0,
                            a.scriptCharset && (b.charset = a.scriptCharset),
                                b.src = a.url,
                                b.onload = b.onreadystatechange = function(a, c) {
                                    (c || !b.readyState || /loaded|complete/.test(b.readyState)) && (b.onload = b.onreadystatechange = null,
                                    b.parentNode && b.parentNode.removeChild(b),
                                        b = null,
                                    c || e(200, "success"))
                                }
                                ,
                                c.insertBefore(b, c.firstChild)
                        },
                        abort: function() {
                            b && b.onload(void 0, !0)
                        }
                    }
                }
            });
        var ra = []
            , sa = /(=)\?(?=&|$)|\?\?/;
        return C.ajaxSetup({
            jsonp: "callback",
            jsonpCallback: function() {
                var a = ra.pop() || C.expando + "_" + W++;
                return this[a] = !0,
                    a
            }
        }),
            C.ajaxPrefilter("json jsonp", function(a, b, c) {
                var d, e, f, g = !1 !== a.jsonp && (sa.test(a.url) ? "url" : "string" == typeof a.data && !(a.contentType || "").indexOf("application/x-www-form-urlencoded") && sa.test(a.data) && "data");
                if (g || "jsonp" === a.dataTypes[0])
                    return d = a.jsonpCallback = C.isFunction(a.jsonpCallback) ? a.jsonpCallback() : a.jsonpCallback,
                        g ? a[g] = a[g].replace(sa, "$1" + d) : !1 !== a.jsonp && (a.url += (X.test(a.url) ? "&" : "?") + a.jsonp + "=" + d),
                        a.converters["script json"] = function() {
                            return f || C.error(d + " was not called"),
                                f[0]
                        }
                        ,
                        a.dataTypes[0] = "json",
                        e = window[d],
                        window[d] = function() {
                            f = arguments
                        }
                        ,
                        c.always(function() {
                            window[d] = e,
                            a[d] && (a.jsonpCallback = b.jsonpCallback,
                                ra.push(d)),
                            f && C.isFunction(e) && e(f[0]),
                                f = e = void 0
                        }),
                        "script"
            }),
            C.parseHTML = function(a, b, c) {
                if (!a || "string" != typeof a)
                    return null;
                "boolean" == typeof b && (c = b,
                    b = !1),
                    b = b || I;
                var d = rsingleTag.exec(a)
                    , e = !c && [];
                return d ? [b.createElement(d[1])] : (d = C.buildFragment([a], b, e),
                e && e.length && C(e).remove(),
                    C.merge([], d.childNodes))
            }
            ,
            C
    }();
    !function(a) {
        function b(a, b, i) {
            var j, k, o, p, q, r, s, t, u, v = 0, w = [], x = 0, y = !1, z = [], A = [], B = !1;
            if (i = i || {},
                j = i.encoding || "UTF8",
            (u = i.numRounds || 1) !== parseInt(u, 10) || 1 > u)
                throw Error("numRounds must a integer >= 1");
            if ("SHA-1" !== a)
                throw Error("Chosen SHA variant is not supported");
            q = 512,
                r = m,
                s = n,
                p = 160,
                t = function(a) {
                    return a.slice()
                }
                ,
                o = h(b, j),
                k = l(a),
                this.setHMACKey = function(b, c, d) {
                    var e;
                    if (!0 === y)
                        throw Error("HMAC key already set");
                    if (!0 === B)
                        throw Error("Cannot set HMAC key after calling update");
                    if (j = (d || {}).encoding || "UTF8",
                        c = h(c, j)(b),
                        b = c.binLen,
                        c = c.value,
                        e = q >>> 3,
                        d = e / 4 - 1,
                    e < b / 8) {
                        for (c = s(c, b, 0, l(a), p); c.length <= d; )
                            c.push(0);
                        c[d] &= 4294967040
                    } else if (e > b / 8) {
                        for (; c.length <= d; )
                            c.push(0);
                        c[d] &= 4294967040
                    }
                    for (b = 0; b <= d; b += 1)
                        z[b] = 909522486 ^ c[b],
                            A[b] = 1549556828 ^ c[b];
                    k = r(z, k),
                        v = q,
                        y = !0
                }
                ,
                this.update = function(a) {
                    var b, c, d, e = 0, f = q >>> 5;
                    for (b = o(a, w, x),
                             a = b.binLen,
                             c = b.value,
                             b = a >>> 5,
                             d = 0; d < b; d += f)
                        e + q <= a && (k = r(c.slice(d, d + f), k),
                            e += q);
                    v += e,
                        w = c.slice(e >>> 5),
                        x = a % q,
                        B = !0;
                    return function(a) {
                        for (var b = "", c = 0; c < 5; c++)
                            for (var d = 0; d < 4; d++) {
                                var e = a[c] >>> 8 * d;
                                e &= 255;
                                var f = Number(e).toString(16);
                                f = f.length < 2 ? "0" + f : f,
                                    b += f
                            }
                        return b
                    }(k)
                }
                ,
                this.getHash = function(b, h) {
                    var i, j, m, n;
                    if (!0 === y)
                        throw Error("Cannot call getHash after setting HMAC key");
                    switch (m = g(h),
                        b) {
                        case "HEX":
                            i = function(a) {
                                return c(a, p, m)
                            }
                            ;
                            break;
                        case "B64":
                            i = function(a) {
                                return d(a, p, m)
                            }
                            ;
                            break;
                        case "BYTES":
                            i = function(a) {
                                return e(a, p)
                            }
                            ;
                            break;
                        case "ARRAYBUFFER":
                            try {
                                j = new ArrayBuffer(0)
                            } catch (a) {
                                throw Error("ARRAYBUFFER not supported by this environment")
                            }
                            i = function(a) {
                                return f(a, p)
                            }
                            ;
                            break;
                        default:
                            throw Error("format must be HEX, B64, BYTES, or ARRAYBUFFER")
                    }
                    for (n = s(w.slice(), x, v, t(k), p),
                             j = 1; j < u; j += 1)
                        n = s(n, p, 0, l(a), p);
                    return i(n)
                }
                ,
                this.getHMAC = function(b, h) {
                    var i, j, m, n;
                    if (!1 === y)
                        throw Error("Cannot call getHMAC without first setting HMAC key");
                    switch (m = g(h),
                        b) {
                        case "HEX":
                            i = function(a) {
                                return c(a, p, m)
                            }
                            ;
                            break;
                        case "B64":
                            i = function(a) {
                                return d(a, p, m)
                            }
                            ;
                            break;
                        case "BYTES":
                            i = function(a) {
                                return e(a, p)
                            }
                            ;
                            break;
                        case "ARRAYBUFFER":
                            try {
                                i = new ArrayBuffer(0)
                            } catch (a) {
                                throw Error("ARRAYBUFFER not supported by this environment")
                            }
                            i = function(a) {
                                return f(a, p)
                            }
                            ;
                            break;
                        default:
                            throw Error("outputFormat must be HEX, B64, BYTES, or ARRAYBUFFER")
                    }
                    return j = s(w.slice(), x, v, t(k), p),
                        n = r(A, l(a)),
                        n = s(j, p, q, n, p),
                        i(n)
                }
        }
        function c(a, b, c) {
            var d = "";
            b /= 8;
            var e, f;
            for (e = 0; e < b; e += 1)
                f = a[e >>> 2] >>> 8 * (3 + e % 4 * -1),
                    d += "0123456789abcdef".charAt(f >>> 4 & 15) + "0123456789abcdef".charAt(15 & f);
            return c.outputUpper ? d.toUpperCase() : d
        }
        function d(a, b, c) {
            var d, e, f, g = "", h = b / 8;
            for (d = 0; d < h; d += 3)
                for (e = d + 1 < h ? a[d + 1 >>> 2] : 0,
                         f = d + 2 < h ? a[d + 2 >>> 2] : 0,
                         f = (a[d >>> 2] >>> 8 * (3 + d % 4 * -1) & 255) << 16 | (e >>> 8 * (3 + (d + 1) % 4 * -1) & 255) << 8 | f >>> 8 * (3 + (d + 2) % 4 * -1) & 255,
                         e = 0; 4 > e; e += 1)
                    g += 8 * d + 6 * e <= b ? "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".charAt(f >>> 6 * (3 - e) & 63) : c.b64Pad;
            return g
        }
        function e(a, b) {
            var c, d, e = "", f = b / 8;
            for (c = 0; c < f; c += 1)
                d = a[c >>> 2] >>> 8 * (3 + c % 4 * -1) & 255,
                    e += String.fromCharCode(d);
            return e
        }
        function f(a, b) {
            var c, d = b / 8, e = new ArrayBuffer(d);
            for (c = 0; c < d; c += 1)
                e[c] = a[c >>> 2] >>> 8 * (3 + c % 4 * -1) & 255;
            return e
        }
        function g(a) {
            var b = {
                outputUpper: !1,
                b64Pad: "=",
                shakeLen: -1
            };
            if (a = a || {},
                b.outputUpper = a.outputUpper || !1,
            !0 === a.hasOwnProperty("b64Pad") && (b.b64Pad = a.b64Pad),
            "boolean" != typeof b.outputUpper)
                throw Error("Invalid outputUpper formatting option");
            if ("string" != typeof b.b64Pad)
                throw Error("Invalid b64Pad formatting option");
            return b
        }
        function h(a, b) {
            var c;
            switch (b) {
                case "UTF8":
                case "UTF16BE":
                case "UTF16LE":
                    break;
                default:
                    throw Error("encoding must be UTF8, UTF16BE, or UTF16LE")
            }
            switch (a) {
                case "HEX":
                    c = function(a, b, c) {
                        var d, e, f, g, h, i = a.length;
                        if (0 != i % 2)
                            throw Error("String of HEX type must be in byte increments");
                        for (b = b || [0],
                                 c = c || 0,
                                 h = c >>> 3,
                                 d = 0; d < i; d += 2) {
                            if (e = parseInt(a.substr(d, 2), 16),
                                isNaN(e))
                                throw Error("String of HEX type contains invalid characters");
                            for (g = (d >>> 1) + h,
                                     f = g >>> 2; b.length <= f; )
                                b.push(0);
                            b[f] |= e << 8 * (3 + g % 4 * -1)
                        }
                        return {
                            value: b,
                            binLen: 4 * i + c
                        }
                    }
                    ;
                    break;
                case "TEXT":
                    c = function(a, c, d) {
                        var e, f, g, h, i, j, k, l, m = 0;
                        if (c = c || [0],
                            d = d || 0,
                            i = d >>> 3,
                        "UTF8" === b)
                            for (l = 3,
                                     g = 0; g < a.length; g += 1)
                                for (e = a.charCodeAt(g),
                                         f = [],
                                         128 > e ? f.push(e) : 2048 > e ? (f.push(192 | e >>> 6),
                                             f.push(128 | 63 & e)) : 55296 > e || 57344 <= e ? f.push(224 | e >>> 12, 128 | e >>> 6 & 63, 128 | 63 & e) : (g += 1,
                                             e = 65536 + ((1023 & e) << 10 | 1023 & a.charCodeAt(g)),
                                             f.push(240 | e >>> 18, 128 | e >>> 12 & 63, 128 | e >>> 6 & 63, 128 | 63 & e)),
                                         h = 0; h < f.length; h += 1) {
                                    for (k = m + i,
                                             j = k >>> 2; c.length <= j; )
                                        c.push(0);
                                    c[j] |= f[h] << 8 * (l + k % 4 * -1),
                                        m += 1
                                }
                        else if ("UTF16BE" === b || "UTF16LE" === b)
                            for (l = 2,
                                     g = 0; g < a.length; g += 1) {
                                for (e = a.charCodeAt(g),
                                     "UTF16LE" === b && (h = 255 & e,
                                         e = h << 8 | e >>> 8),
                                         k = m + i,
                                         j = k >>> 2; c.length <= j; )
                                    c.push(0);
                                c[j] |= e << 8 * (l + k % 4 * -1),
                                    m += 2
                            }
                        return {
                            value: c,
                            binLen: 8 * m + d
                        }
                    }
                    ;
                    break;
                case "B64":
                    c = function(a, b, c) {
                        var d, e, f, g, h, i, j, k = 0;
                        if (-1 === a.search(/^[a-zA-Z0-9=+\/]+$/))
                            throw Error("Invalid character in base-64 string");
                        if (e = a.indexOf("="),
                            a = a.replace(/\=/g, ""),
                        -1 !== e && e < a.length)
                            throw Error("Invalid '=' found in base-64 string");
                        for (b = b || [0],
                                 c = c || 0,
                                 i = c >>> 3,
                                 e = 0; e < a.length; e += 4) {
                            for (h = a.substr(e, 4),
                                     f = g = 0; f < h.length; f += 1)
                                d = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".indexOf(h[f]),
                                    g |= d << 18 - 6 * f;
                            for (f = 0; f < h.length - 1; f += 1) {
                                for (j = k + i,
                                         d = j >>> 2; b.length <= d; )
                                    b.push(0);
                                b[d] |= (g >>> 16 - 8 * f & 255) << 8 * (3 + j % 4 * -1),
                                    k += 1
                            }
                        }
                        return {
                            value: b,
                            binLen: 8 * k + c
                        }
                    }
                    ;
                    break;
                case "BYTES":
                    c = function(a, b, c) {
                        var d, e, f, g, h;
                        for (b = b || [0],
                                 c = c || 0,
                                 f = c >>> 3,
                                 e = 0; e < a.length; e += 1)
                            d = a.charCodeAt(e),
                                h = e + f,
                                g = h >>> 2,
                            b.length <= g && b.push(0),
                                b[g] |= d << 8 * (3 + h % 4 * -1);
                        return {
                            value: b,
                            binLen: 8 * a.length + c
                        }
                    }
                    ;
                    break;
                case "ARRAYBUFFER":
                    try {
                        c = new ArrayBuffer(0)
                    } catch (a) {
                        throw Error("ARRAYBUFFER not supported by this environment")
                    }
                    c = function(a, b, c) {
                        var d, e, f, g;
                        for (b = b || [0],
                                 c = c || 0,
                                 e = c >>> 3,
                                 d = 0; d < a.byteLength; d += 1)
                            g = d + e,
                                f = g >>> 2,
                            b.length <= f && b.push(0),
                                b[f] |= a[d] << 8 * (3 + g % 4 * -1);
                        return {
                            value: b,
                            binLen: 8 * a.byteLength + c
                        }
                    }
                    ;
                    break;
                default:
                    throw Error("format must be HEX, TEXT, B64, BYTES, or ARRAYBUFFER")
            }
            return c
        }
        function i(a, b) {
            return a << b | a >>> 32 - b
        }
        function j(a, b) {
            var c = (65535 & a) + (65535 & b);
            return ((a >>> 16) + (b >>> 16) + (c >>> 16) & 65535) << 16 | 65535 & c
        }
        function k(a, b, c, d, e) {
            var f = (65535 & a) + (65535 & b) + (65535 & c) + (65535 & d) + (65535 & e);
            return ((a >>> 16) + (b >>> 16) + (c >>> 16) + (d >>> 16) + (e >>> 16) + (f >>> 16) & 65535) << 16 | 65535 & f
        }
        function l(a) {
            if ("SHA-1" !== a)
                throw Error("No SHA variants supported");
            return [1732584193, 4023233417, 2562383102, 271733878, 3285377520]
        }
        function m(a, b) {
            var c, d, e, f, g, h, l, m = [];
            for (c = b[0],
                     d = b[1],
                     e = b[2],
                     f = b[3],
                     g = b[4],
                     l = 0; 80 > l; l += 1)
                m[l] = 16 > l ? a[l] : i(m[l - 3] ^ m[l - 8] ^ m[l - 14] ^ m[l - 16], 1),
                    h = 20 > l ? k(i(c, 5), d & e ^ ~d & f, g, 1518500249, m[l]) : 40 > l ? k(i(c, 5), d ^ e ^ f, g, 1859775393, m[l]) : 60 > l ? k(i(c, 5), d & e ^ d & f ^ e & f, g, 2400959708, m[l]) : k(i(c, 5), d ^ e ^ f, g, 3395469782, m[l]),
                    g = f,
                    f = e,
                    e = i(d, 30),
                    d = c,
                    c = h;
            return b[0] = j(c, b[0]),
                b[1] = j(d, b[1]),
                b[2] = j(e, b[2]),
                b[3] = j(f, b[3]),
                b[4] = j(g, b[4]),
                b
        }
        function n(a, b, c, d) {
            var e;
            for (e = 15 + (b + 65 >>> 9 << 4); a.length <= e; )
                a.push(0);
            for (a[b >>> 5] |= 128 << 24 - b % 32,
                     b += c,
                     a[e] = 4294967295 & b,
                     a[e - 1] = b / 4294967296 | 0,
                     b = a.length,
                     e = 0; e < b; e += 16)
                d = m(a.slice(e, e + 16), d);
            return d
        }
        "function" == typeof define && define.amd ? define(function() {
            return b
        }) : "undefined" != typeof exports ? ("undefined" != typeof module && module.exports && (module.exports = b),
            exports = b) : a.jsSHA = b
    }(this),
        function(a, b) {
            "object" == typeof exports && "undefined" != typeof module ? module.exports = b() : "function" == typeof define && (define.amd || define.cmd) ? define(b) : a.CosCloud = b()
        }(this, function() {
            "use strict";
            function b(a) {
                this.appid = a.appid,
                    this.bucket = a.bucket,
                    this.region = a.region,
                    this.sha1CacheExpired = 259200,
                    this.uploadMaxThread = 5,
                    this.uploadMaxRetryTimes = 3,
                    this._uploadingThreadCount = 0,
                    this.tasks = [],
                a.getAppSign && (this.getAppSign = c(a.getAppSign, this)),
                a.getAppSignOnce && (this.getAppSignOnce = c(a.getAppSignOnce, this))
            }
            function c(a, b) {
                return function(c) {
                    a.call(b, function(a) {
                        decodeURIComponent(a) === a && (a = encodeURIComponent(a)),
                            c(a)
                    })
                }
            }
            function d() {
                function a() {
                    return Math.floor(65536 * (1 + Math.random())).toString(16).substring(1)
                }
                return a() + a() + "-" + a() + "-" + a() + "-" + a() + "-" + a() + a() + a()
            }
            function e(a, b) {
                if (!a)
                    return "";
                var c = this;
                return a = a.replace(/(^\/*)|(\/*$)/g, ""),
                    a = "folder" == b ? encodeURIComponent(a + "/").replace(/%2F/g, "/") : encodeURIComponent(a).replace(/%2F/g, "/"),
                c && (c.path = "/" + c.appid + "/" + c.bucket + "/" + a),
                    a
            }
            function f(b) {
                var c, d = a.Deferred(), e = new window.jsSHA("SHA-1","BYTES"), f = 0, g = b.sliceSize, h = new FileReader, i = [], j = b.file, l = j.size;
                b.session && (c = p(b.session));
                var m = function(a) {
                    i.push(a);
                    var b = a.offset + "-" + a.datalen;
                    return !c || !c[b] || a.datasha === c[b]
                };
                return h.onload = function(a) {
                    if ("cancel" !== b.globalTask.state && j && !(j.length < 1)) {
                        var c = e.update(this.content || this.result)
                            , n = f + g > l ? l - f : g
                            , o = f + n < l
                            , p = o ? c : e.getHash("HEX");
                        if (!m({
                            offset: f,
                            datalen: n,
                            datasha: p
                        }))
                            return void d.reject("sha1 not match");
                        f += n,
                            b.onprogress(0, f / l),
                            o ? k.call(h, j.slice(f, Math.min(f + g, l))) : d.resolve(i)
                    }
                }
                    ,
                    k.call(h, j.slice(f, f + g)),
                    h.onerror = function() {
                        d.reject()
                    }
                    ,
                    d.promise()
            }
            function g(b) {
                var c = a.Deferred()
                    , d = b.file
                    , e = this
                    , f = this.getCgiUrl(b.path, b.sign)
                    , g = new FormData
                    , i = b.uploadparts;
                return g.append("uploadparts", JSON.stringify(i)),
                    g.append("sha", b.sha),
                    g.append("op", "upload_slice_init"),
                    g.append("filesize", d.size),
                    g.append("slice_size", b.sliceSize),
                    g.append("biz_attr", b.biz_attr),
                    g.append("insertOnly", b.insertOnly),
                    a.ajax({
                        type: "POST",
                        dataType: "JSON",
                        url: f,
                        data: g,
                        success: function(a) {
                            if ("cancel" !== b.globalTask.state)
                                if (a = a || {},
                                0 == a.code) {
                                    if (a.data.access_url)
                                        return void c.resolve(a);
                                    var d = a.data.session
                                        , f = parseInt(a.data.slice_size)
                                        , g = a.data.offset || 0;
                                    b.session = d,
                                        b.slice_size = f,
                                        b.offset = g,
                                        h.call(e, b).done(function(a) {
                                            c.resolve(a)
                                        }).fail(function(a) {
                                            c.reject(a)
                                        });
                                    for (var i, j = {}, k = 1; k < b.uploadparts.length; k *= 2)
                                        i = b.uploadparts[k - 1],
                                            j[i.offset + "-" + i.datalen] = i.datasha;
                                    i = b.uploadparts[b.uploadparts.length - 1],
                                        j[i.offset + "-" + i.datalen] = i.datasha,
                                        o(b.session, j, e.sha1CacheExpired)
                                } else
                                    c.reject(a)
                        },
                        error: function() {
                            c.reject()
                        },
                        processData: !1,
                        contentType: !1
                    }),
                    c.promise()
            }
            function h(b) {
                var c, d = this, e = b.file, f = a.Deferred(), g = {
                    opt: b,
                    uploadingAjax: [],
                    uploadingCount: 0,
                    currentIndex: 0,
                    chunkCount: Math.ceil(e.size / b.slice_size),
                    chunks: [],
                    loadedSize: 0,
                    uploadError: !1,
                    onTaskProgress: function(a) {
                        var d = function() {
                            c = 0,
                            b.onprogress && b.onprogress(g.loadedSize / e.size, 1)
                        };
                        if (a)
                            clearTimeout(c),
                                d();
                        else {
                            if (c)
                                return;
                            c = setTimeout(d, 100)
                        }
                    }
                };
                !function() {
                    var a, c = {};
                    if (b.listparts)
                        for (a = 0; a < b.listparts.length; a++)
                            c[b.listparts[a].offset] = b.listparts[a];
                    for (a = 0; a < g.chunkCount; a++) {
                        var d = a * b.slice_size
                            , f = Math.min(d + b.slice_size, e.size)
                            , h = {
                            start: d,
                            end: f,
                            size: f - d
                        };
                        c[d] ? (g.loadedSize += h.size,
                            h.state = "online") : h.state = "waiting",
                            g.chunks.push(h)
                    }
                }();
                var h = function() {
                    g.onTaskProgress(!0),
                        f.resolve()
                }
                    , i = function(a, b) {
                    g.uploadError = "error";
                    for (var c = g.uploadingAjax.length - 1; c >= 0; c--) {
                        var d = g.uploadingAjax[c];
                        d && d.abort()
                    }
                    g.onTaskProgress(!0),
                        f.reject(b)
                };
                b.globalTask.cancelRequests = function() {
                    for (var a = g.uploadingAjax.length - 1; a >= 0; a--) {
                        var b = g.uploadingAjax[a];
                        b && b.abort()
                    }
                }
                ;
                var j = function() {
                    if ("cancel" !== b.globalTask.state)
                        for (; d._uploadingThreadCount < d.uploadMaxThread && g.currentIndex < g.chunkCount; g.currentIndex++) {
                            var a = g.chunks[g.currentIndex];
                            "waiting" === a.state && function(a) {
                                a.state = "uploading",
                                    g.uploadingCount++,
                                    d._uploadingThreadCount++,
                                    q.call(d, g, a, function(b, c) {
                                        g.uploadingCount--,
                                            d._uploadingThreadCount--,
                                            b ? (a.state = "error",
                                                i(0, c)) : (a.state = "success",
                                                g.uploadingCount <= 0 && g.currentIndex >= g.chunkCount ? h() : j())
                                    })
                            }(a)
                        }
                };
                return j(),
                    f.promise()
            }
            function i(b) {
                var c = this
                    , d = a.Deferred()
                    , e = b.file;
                return c.getAppSign(function(f) {
                    b.sign = f;
                    var g = c.getCgiUrl(b.path, b.sign)
                        , h = new FormData;
                    h.append("op", "upload_slice_list"),
                        a.ajax({
                            type: "POST",
                            dataType: "JSON",
                            url: g,
                            data: h,
                            success: function(a) {
                                if (a = a || {},
                                0 == a.code) {
                                    b.session = a.data.session,
                                        b.slice_size = a.data.slice_size;
                                    var c = a.data.listparts || [];
                                    b.listparts = c;
                                    var f = c.length;
                                    if (f) {
                                        var g = b.listparts[f - 1]
                                            , h = g.offset;
                                        if (h + b.slice_size >= e.size)
                                            return d.resolve(),
                                                d.promise();
                                        b.offset = h
                                    }
                                    d.resolve(a)
                                } else
                                    d.reject(a)
                            },
                            error: function() {
                                d.reject()
                            },
                            processData: !1,
                            contentType: !1
                        })
                }),
                    d.promise()
            }
            function j(b) {
                var c = this
                    , d = a.Deferred()
                    , e = b.file;
                return c.getAppSign(function(f) {
                    b.sign = f;
                    var g = b.session
                        , h = c.getCgiUrl(b.path, b.sign)
                        , i = new FormData;
                    b.sha && i.append("sha", b.sha),
                        i.append("op", "upload_slice_finish"),
                        i.append("filesize", e.size),
                        i.append("session", g),
                        a.ajax({
                            type: "POST",
                            dataType: "JSON",
                            url: h,
                            data: i,
                            success: function(a) {
                                a = a || {},
                                    0 == a.code ? d.resolve(a) : d.reject(a)
                            },
                            error: function() {
                                d.reject()
                            },
                            processData: !1,
                            contentType: !1
                        })
                }),
                    d.promise()
            }
            function k(a) {
                var b;
                FileReader.prototype.readAsBinaryString ? b = FileReader.prototype.readAsBinaryString : FileReader.prototype.readAsArrayBuffer ? b = function(a) {
                        var b = ""
                            , c = this
                            , d = new FileReader;
                        d.onload = function(a) {
                            for (var e = new Uint8Array(d.result), f = e.byteLength, g = 0; g < f; g++)
                                b += String.fromCharCode(e[g]);
                            c.content = b,
                                c.onload()
                        }
                            ,
                            d.readAsArrayBuffer(a)
                    }
                    : console.error("FileReader not support readAsBinaryString"),
                    b.call(this, a)
            }
            var l = 524288
                , m = 1048576;
            b.prototype.cosapi_cgi_url = "//REGION.file.myqcloud.com/files/v2/",
                b.prototype.slice = File.prototype.slice || File.prototype.mozSlice || File.prototype.webkitSlice,
                b.prototype.sliceSize = 3145728,
                b.prototype.getExpired = function(a) {
                    return (new Date).getTime() / 1e3 + (a || 60)
                }
                ,
                b.prototype.getSliceSize = function(a) {
                    return a <= l ? l : m
                }
                ,
                b.prototype.set = function(a) {
                    a && (this.appid = a.appid,
                        this.bucket = a.bucket,
                        this.region = a.region,
                    a.getAppSign && (this.getAppSign = a.getAppSign),
                    a.getAppSignOnce && (this.getAppSignOnce = a.getAppSignOnce))
                }
                ,
                b.prototype.getCgiUrl = function(a, b) {
                    var c = this.region
                        , d = this.bucket
                        , e = this.cosapi_cgi_url;
                    return (e = e.replace("REGION", c)) + this.appid + "/" + d + "/" + a + "?sign=" + b
                }
                ,
                b.prototype.getAppSign = function(b, c, d) {
                    var e = this.getExpired()
                        , f = this.sign_url + "?sign_type=appSign&expired=" + e + "&bucketName=" + d;
                    a.ajax({
                        url: f,
                        type: "GET",
                        success: b,
                        error: c
                    })
                }
                ,
                b.prototype.getAppSignOnce = function(b, c, d, e) {
                    var f = this.sign_url + "?sign_type=appSign_once&path=" + encodeURIComponent(d) + "&bucketName=" + e;
                    a.ajax({
                        url: f,
                        type: "GET",
                        success: b,
                        error: c
                    })
                }
                ,
                b.prototype.updateFolder = function(a, b, c, d, f) {
                    d = e.call(this, d, "folder"),
                        this.updateBase(a, b, c, d, f)
                }
                ,
                b.prototype.updateFile = function(a, b, c, d, f) {
                    d = e.call(this, d),
                        this.updateBase(a, b, c, d, f)
                }
                ,
                b.prototype.updateBase = function(b, c, d, e, f, g, h) {
                    var i = this;
                    i.getAppSignOnce(function(d) {
                        var j = i.getCgiUrl(e, d)
                            , k = new FormData;
                        k.append("op", "update"),
                        f && k.append("biz_attr", f),
                        g && k.append("authority", g),
                        h && (h = JSON.stringify(h),
                            k.append("customHeaders", h)),
                            a.ajax({
                                type: "POST",
                                url: j,
                                processData: !1,
                                contentType: !1,
                                data: k,
                                success: b,
                                error: c
                            })
                    })
                }
                ,
                b.prototype.deleteFolder = function(a, b, c, d) {
                    d = e.call(this, d, "folder"),
                        this.deleteBase(a, b, c, d)
                }
                ,
                b.prototype.deleteFile = function(a, b, c, d) {
                    d = e.call(this, d),
                        this.deleteBase(a, b, c, d)
                }
                ,
                b.prototype.deleteBase = function(b, c, d, e) {
                    if ("/" == e)
                        return void c({
                            code: 10003,
                            message: "不能删除Bucket"
                        });
                    var f = this;
                    this.getAppSignOnce(function(d) {
                        var g = f.getCgiUrl(e, d)
                            , h = new FormData;
                        h.append("op", "delete"),
                            a.ajax({
                                type: "POST",
                                url: g,
                                data: h,
                                processData: !1,
                                contentType: !1,
                                success: b,
                                error: c
                            })
                    })
                }
                ,
                b.prototype.getFolderStat = function(a, b, c, d) {
                    d = e(d, "folder"),
                        this.statBase(a, b, c, d)
                }
                ,
                b.prototype.getFileStat = function(a, b, c, d) {
                    d = e(d),
                        this.statBase(a, b, c, d)
                }
                ,
                b.prototype.statBase = function(b, c, d, e) {
                    var f = this;
                    this.getAppSign.call(f, function(d) {
                        var g = f.getCgiUrl(e, d)
                            , h = {
                            op: "stat"
                        };
                        a.ajax({
                            url: g,
                            type: "GET",
                            data: h,
                            success: b,
                            error: c
                        })
                    })
                }
                ,
                b.prototype.createFolder = function(b, c, d, f, g) {
                    var h = this;
                    this.getAppSign(function(d) {
                        f = e(f, "folder");
                        var i = h.getCgiUrl(f, d)
                            , j = new FormData;
                        j.append("op", "create"),
                            j.append("biz_attr", g || ""),
                            a.ajax({
                                type: "POST",
                                url: i,
                                data: j,
                                processData: !1,
                                contentType: !1,
                                success: b,
                                error: c
                            })
                    })
                }
                ,
                b.prototype.copyFile = function(b, c, d, f, g, h) {
                    var i = this;
                    this.getAppSign(function(d) {
                        f = e(f);
                        var j = i.getCgiUrl(f, d)
                            , k = new FormData;
                        k.append("op", "copy"),
                            k.append("dest_fileid", g),
                            k.append("to_over_write", h),
                            a.ajax({
                                type: "POST",
                                url: j,
                                data: k,
                                processData: !1,
                                contentType: !1,
                                success: b,
                                error: c
                            })
                    })
                }
                ,
                b.prototype.moveFile = function(b, c, d, f, g, h) {
                    var i = this;
                    this.getAppSign(function(d) {
                        f = e(f);
                        var j = i.getCgiUrl(f, d)
                            , k = new FormData;
                        k.append("op", "move"),
                            k.append("dest_fileid", g),
                            k.append("to_over_write", h),
                            a.ajax({
                                type: "POST",
                                url: j,
                                data: k,
                                processData: !1,
                                contentType: !1,
                                success: b,
                                error: c
                            })
                    })
                }
                ,
                b.prototype.getFolderList = function(a, b, c, d, f, g, h, i, j) {
                    var k = this;
                    d = e(d, "folder"),
                        k.listBase(a, b, c, d, f, g, h, i)
                }
                ,
                b.prototype.listBase = function(b, c, d, e, f, g, h, i, j) {
                    var k = this;
                    k.getAppSign(function(d) {
                        var j = k.getCgiUrl(e, d);
                        f = f || 20,
                            h = h || 0,
                            i = i || "eListBoth";
                        var l = {
                            op: "list",
                            num: f,
                            context: g,
                            order: h,
                            pattern: i
                        };
                        a.ajax({
                            url: j,
                            type: "GET",
                            data: l,
                            success: b,
                            error: c
                        })
                    })
                }
                ,
                b.prototype.uploadFile = function(b, c, f, g, h, i, j, k) {
                    var l = this;
                    if (i.size > 20971520)
                        return void l.sliceUploadFile(b, c, f, g, h, i, j, void 0, void 0, k);
                    h = e(h);
                    var m, n = d(), o = {
                        id: n,
                        cancel: function() {
                            m && m.abort()
                        }
                    };
                    this.tasks[n] = o,
                    k && "function" == typeof k && k(n),
                        l.getAppSign(function(d) {
                            var e = l.getCgiUrl(h, d)
                                , g = new FormData;
                            g.append("op", "upload"),
                                g.append("fileContent", i),
                            j >= 0 && g.append("insertOnly", j),
                                m = a.ajax({
                                    type: "POST",
                                    url: e,
                                    data: g,
                                    processData: !1,
                                    contentType: !1,
                                    xhr: function() {
                                        var b = a.ajaxSettings.xhr();
                                        return b.upload.onprogress = function(a) {
                                            var b = a.loaded / a.total;
                                            "function" == typeof f && f(b, 0)
                                        }
                                            ,
                                            b
                                    },
                                    success: b,
                                    error: c
                                })
                        })
                }
                ,
                b.prototype.sliceUploadFile = function(a, b, c, k, l, m, n, o, p, q) {
                    var r = d()
                        , s = {
                        id: r,
                        cancelRequests: null,
                        cancel: function() {
                            s.cancelRequests && s.cancelRequests()
                        }
                    };
                    this.tasks[r] = s,
                    q && "function" == typeof q && q(r);
                    var t = this;
                    l = e(l),
                        t.getAppSign(function(d) {
                            var e = {};
                            e.globalTask = s,
                            "cancel" !== e.globalTask.state && (o = t.getSliceSize(o),
                                e.bucket = k,
                                e.path = l,
                                e.file = m,
                                e.insertOnly = n,
                                e.sliceSize = o || 1048576,
                                e.appid = t.appid,
                                e.sign = d,
                                e.biz_attr = p || "",
                                e.onprogress = function(a, b) {
                                    void 0 === b && (b = 1),
                                        c(a, b)
                                }
                                ,
                                i.call(t, e).always(function(c) {
                                    if ("cancel" !== e.globalTask.state) {
                                        c = c || {};
                                        var d = c.data;
                                        if (d && d.session) {
                                            if (d.filesize !== e.file.size)
                                                return b({
                                                    code: -1,
                                                    message: "filesize not match"
                                                });
                                            var i = e.listparts || [];
                                            if (e.session = d.session,
                                                e.listparts = i,
                                            i && i.length) {
                                                var k = i.length;
                                                e.offset = i[k - 1].offset
                                            }
                                            d.sha && (e.onlineSha = d.sha.split("_")[0]),
                                                f.call(t, e).done(function(c) {
                                                    if ("cancel" !== e.globalTask.state) {
                                                        e.uploadparts = c;
                                                        var d = c.length;
                                                        e.sha = c[d - 1].datasha,
                                                            h.call(t, e).done(function() {
                                                                j.call(t, e).done(function(b) {
                                                                    a(b)
                                                                }).fail(function(a) {
                                                                    b({
                                                                        code: -1,
                                                                        message: a && a.message || "slice finish error"
                                                                    })
                                                                })
                                                            }).fail(function(a) {
                                                                b({
                                                                    code: -1,
                                                                    message: a && a.message || "slice upload file error"
                                                                })
                                                            })
                                                    }
                                                }).fail(function(a) {
                                                    b({
                                                        code: -1,
                                                        message: a || "get slice sha1 error"
                                                    })
                                                })
                                        } else
                                            d && d.access_url ? ("function" == typeof e.onprogress && e.onprogress(1, 0),
                                                a(c)) : f.call(t, e).done(function(c) {
                                                if ("cancel" !== e.globalTask.state) {
                                                    e.uploadparts = c;
                                                    var d = c.length;
                                                    e.sha = c[d - 1].datasha,
                                                        g.call(t, e).done(function(c) {
                                                            if ("cancel" !== e.globalTask.state) {
                                                                c = c || {};
                                                                var d = c.data || {};
                                                                d && d.access_url ? ("function" == typeof e.onprogress && e.onprogress(1, 0),
                                                                    a(c)) : j.call(t, e).done(function(b) {
                                                                    a(b)
                                                                }).fail(function(a) {
                                                                    b({
                                                                        code: -1,
                                                                        message: a.message || "slice finish error"
                                                                    })
                                                                })
                                                            }
                                                        }).fail(function(a) {
                                                            a = a || {},
                                                                b({
                                                                    code: a.code || -1,
                                                                    message: a.message || "upload slice file error"
                                                                })
                                                        })
                                                }
                                            }).fail(function() {
                                                b({
                                                    code: -1,
                                                    message: "get slice sha1 error"
                                                })
                                            })
                                    }
                                }))
                        })
                }
                ,
                b.prototype.cancelTask = function(a) {
                    var b = this.tasks[a];
                    b && (b.state = "cancel",
                        b.cancel())
                }
            ;
            var n = "_cos_sdk_sha1_"
                , o = function(a, b, c) {
                try {
                    var d = JSON.parse(localStorage.getItem(n)) || {}
                } catch (a) {}
                var e = Date.now();
                b.update_time = e,
                    d[a] = b;
                for (var f = localStorage.length - 1; f >= 0; f--) {
                    var g = localStorage.key(f);
                    e - localStorage.getItem(g).update_time > c && localStorage.removeItem(g)
                }
                localStorage.setItem(n, JSON.stringify(d))
            }
                , p = function(a) {
                try {
                    var b = JSON.parse(localStorage.getItem(n)) || {}
                } catch (a) {}
                return b[a]
            }
                , q = function(b, c, d) {
                var e = this
                    , f = new FormData
                    , g = b.opt
                    , h = g.file
                    , i = g.slice_size
                    , j = g.session
                    , k = h.size
                    , l = c.start
                    , m = Math.min(l + i, k)
                    , n = e.slice.call(h, l, m)
                    , o = n.size
                    , p = function(a) {
                    for (var c = b.uploadingAjax.length - 1; c >= 0; c--)
                        a === b.uploadingAjax[c] && b.uploadingAjax.splice(c, 1)
                }
                    , q = 0
                    , r = function(a, c) {
                    b.loadedSize += a - q,
                        q = a,
                    b.onTaskProgress && b.onTaskProgress(c)
                }
                    , s = function(c) {
                    f.append("sliceSize", i),
                        f.append("op", "upload_slice_data"),
                        f.append("session", j),
                        f.append("offset", l),
                    g.sha && f.append("sha", g.sha),
                        f.append("fileContent", n),
                        e.getAppSign(function(d) {
                            g.sign = d;
                            var h = e.getCgiUrl(g.path, g.sign)
                                , i = a.ajax({
                                type: "POST",
                                dataType: "JSON",
                                url: h,
                                data: f,
                                xhr: function() {
                                    var c = a.ajaxSettings.xhr();
                                    return c.upload.onprogress = function(a) {
                                        r(a.loaded),
                                        b.onTaskProgress && b.onTaskProgress()
                                    }
                                        ,
                                        c
                                },
                                success: function(a) {
                                    r(o, !0),
                                        a = a || {},
                                        0 === a.code ? c(null, a) : c("error", a)
                                },
                                error: function() {
                                    r(0, !0),
                                        c("error")
                                },
                                complete: function() {
                                    p(i)
                                },
                                processData: !1,
                                contentType: !1
                            });
                            b.uploadingAjax.push(i)
                        })
                }
                    , t = function(a) {
                    "cancel" !== g.globalTask.state && s(function(c, f) {
                        c ? a >= e.uploadMaxRetryTimes || b.uploadError ? d(c, f) : t(a + 1) : d(c, f)
                    })
                };
                t(1)
            };
            return b
        })
}();
