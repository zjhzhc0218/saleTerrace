/*!  2018-10-22 */

!function(a) {
    "function" == typeof define && define.amd ? define("viewer", ["jquery"], a) : a("object" == typeof exports ? require("jquery") : jQuery)
}(function(a) {
    "use strict";
    function b(a) {
        return "string" == typeof a
    }
    function c(a) {
        return "number" == typeof a && !isNaN(a)
    }
    function d(a) {
        return void 0 === a
    }
    function e(a, b) {
        var d = [];
        return c(b) && d.push(b),
            d.slice.apply(a, d)
    }
    function f(a, b) {
        var c = e(arguments, 2);
        return function() {
            return a.apply(b, c.concat(e(arguments)))
        }
    }
    function g(a) {
        var b = []
            , d = a.rotate
            , e = a.scaleX
            , f = a.scaleY;
        return c(d) && b.push("rotate(" + d + "deg)"),
        c(e) && c(f) && b.push("scale(" + e + "," + f + ")"),
            b.length ? b.join(" ") : "none"
    }
    function h(a) {
        return a.offsetWidth
    }
    function i(a) {
        return b(a) ? a.replace(/^.*\//, "").replace(/[\?&#].*$/, "") : ""
    }
    function j(a, b) {
        var c;
        if (a.naturalWidth)
            return b(a.naturalWidth, a.naturalHeight);
        c = document.createElement("img"),
            c.onload = function() {
                b(this.width, this.height)
            }
            ,
            c.src = a.src
    }
    function k(b) {
        var c = b.length
            , d = 0
            , e = 0;
        return c && (a.each(b, function(a, b) {
            d += b.pageX,
                e += b.pageY
        }),
            d /= c,
            e /= c),
            {
                pageX: d,
                pageY: e
            }
    }
    function l(a) {
        switch (a) {
            case 2:
                return q;
            case 3:
                return r;
            case 4:
                return s
        }
    }
    function m(b, c) {
        this.$element = a(b),
            this.options = a.extend({}, m.DEFAULTS, a.isPlainObject(c) && c),
            this.isImg = !1,
            this.isBuilt = !1,
            this.isShown = !1,
            this.isViewed = !1,
            this.isFulled = !1,
            this.isPlayed = !1,
            this.wheeling = !1,
            this.playing = !1,
            this.fading = !1,
            this.tooltiping = !1,
            this.transitioning = !1,
            this.action = !1,
            this.target = !1,
            this.timeout = !1,
            this.index = 0,
            this.length = 0,
            this.init()
    }
    var n = a(window)
        , o = a(document)
        , p = document.createElement("viewer")
        , q = "viewer-hide-xs-down"
        , r = "viewer-hide-sm-down"
        , s = "viewer-hide-md-down"
        , t = "viewer-in"
        , u = "viewer-transition"
        , v = "mousedown touchstart pointerdown MSPointerDown"
        , w = "mouseup touchend touchcancel pointerup pointercancel MSPointerUp MSPointerCancel"
        , x = void 0 !== p.style.transition
        , y = Math.round
        , z = Math.sqrt
        , A = Math.abs
        , B = Math.min
        , C = Math.max
        , D = Number;
    m.prototype = {
        constructor: m,
        init: function() {
            var b = this.options
                , c = this.$element
                , d = c.is("img")
                , e = d ? c : c.find("img")
                , f = e.length
                , g = a.proxy(this.ready, this);
            f && (a.isFunction(b.build) && c.one("build.viewer", b.build),
            this.trigger("build.viewer").isDefaultPrevented() || (x || (b.transition = !1),
                this.isImg = d,
                this.length = f,
                this.count = 0,
                this.$images = e,
                this.$body = a("body"),
                b.inline ? (c.one("built.viewer", a.proxy(function() {
                    this.view()
                }, this)),
                    e.each(function() {
                        this.complete ? g() : a(this).one("load.viewer", g)
                    })) : c.on("click.viewer", a.proxy(this.start, this))))
        },
        ready: function() {
            ++this.count === this.length && this.build()
        },
        build: function() {
            var b, c, d, e, f, g, h = this.options, i = this.$element;
            this.isBuilt || (this.$parent = b = i.parent(),
                this.$viewer = c = a(m.TEMPLATE),
                this.$canvas = c.find(".viewer-canvas"),
                this.$footer = c.find(".viewer-footer"),
                this.$title = d = c.find(".viewer-title"),
                this.$toolbar = e = c.find(".viewer-toolbar"),
                this.$navbar = f = c.find(".viewer-navbar"),
                this.$button = g = c.find(".viewer-button"),
                this.$tooltip = c.find(".viewer-tooltip"),
                this.$player = c.find(".viewer-player"),
                this.$list = c.find(".viewer-list"),
                d.addClass(h.title ? l(h.title) : "viewer-hide"),
                e.addClass(h.toolbar ? l(h.toolbar) : "viewer-hide"),
                e.find("li[class*=zoom]").toggleClass("viewer-invisible", !h.zoomable),
                e.find("li[class*=flip]").toggleClass("viewer-invisible", !h.scalable),
            h.rotatable || e.find("li[class*=rotate]").addClass("viewer-invisible").appendTo(e),
                f.addClass(h.navbar ? l(h.navbar) : "viewer-hide"),
                g.toggleClass("viewer-hide", !h.button),
                h.inline ? (g.addClass("viewer-fullscreen"),
                    c.css("z-index", h.zIndexInline),
                "static" === b.css("position") && b.css("position", "relative")) : (g.addClass("viewer-close"),
                    c.css("z-index", h.zIndex).addClass(["viewer-fixed", "viewer-fade", "viewer-hide"].join(" "))),
                i.after(c),
            h.inline && (this.render(),
                this.bind(),
                this.isShown = !0),
                this.isBuilt = !0,
            a.isFunction(h.built) && i.one("built.viewer", h.built),
                this.trigger("built.viewer"))
        },
        unbuild: function() {
            this.isBuilt && (this.isBuilt = !1,
                this.$viewer.remove())
        },
        bind: function() {
            var b = this.options
                , c = this.$element;
            a.isFunction(b.view) && c.on("view.viewer", b.view),
            a.isFunction(b.viewed) && c.on("viewed.viewer", b.viewed),
                this.$viewer.on("click.viewer", a.proxy(this.click, this)).on("wheel mousewheel DOMMouseScroll", a.proxy(this.wheel, this)),
                this.$canvas.on(v, a.proxy(this.mousedown, this)),
                o.on("mousemove touchmove pointermove MSPointerMove", this._mousemove = f(this.mousemove, this)).on(w, this._mouseup = f(this.mouseup, this)).on("keydown.viewer", this._keydown = f(this.keydown, this)),
                n.on("resize.viewer", this._resize = f(this.resize, this))
        },
        unbind: function() {
            var b = this.options
                , c = this.$element;
            a.isFunction(b.view) && c.off("view.viewer", b.view),
            a.isFunction(b.viewed) && c.off("viewed.viewer", b.viewed),
                this.$viewer.off("click.viewer", this.click).off("wheel mousewheel DOMMouseScroll", this.wheel),
                this.$canvas.off(v, this.mousedown),
                o.off("mousemove touchmove pointermove MSPointerMove", this._mousemove).off(w, this._mouseup).off("keydown.viewer", this._keydown),
                n.off("resize.viewer", this._resize)
        },
        render: function() {
            this.initContainer(),
                this.initViewer(),
                this.initList(),
                this.renderViewer()
        },
        initContainer: function() {
            this.container = {
                width: n.innerWidth(),
                height: n.innerHeight()
            }
        },
        initViewer: function() {
            var b, c = this.options, d = this.$parent;
            c.inline && (this.parent = b = {
                width: C(d.width(), c.minWidth),
                height: C(d.height(), c.minHeight)
            }),
            !this.isFulled && b || (b = this.container),
                this.viewer = a.extend({}, b)
        },
        renderViewer: function() {
            this.options.inline && !this.isFulled && this.$viewer.css(this.viewer)
        },
        initList: function() {
            var c = this.options
                , d = this.$element
                , e = this.$list
                , f = [];
            this.$images.each(function(d) {
                var e = this.src
                    , g = this.alt || i(e)
                    , h = c.url;
                e && (b(h) ? h = this.getAttribute(h) : a.isFunction(h) && (h = h.call(this, this)),
                    f.push('<li><img src="' + e + '" data-action="view" data-index="' + d + '" data-original-url="' + (h || e) + '" alt="' + g + '"></li>'))
            }),
                e.html(f.join("")).find("img").one("load.viewer", {
                    filled: !0
                }, a.proxy(this.loadImage, this)),
                this.$items = e.children(),
            c.transition && d.one("viewed.viewer", function() {
                e.addClass(u)
            })
        },
        renderList: function(a) {
            var b = a || this.index
                , c = this.$items.eq(b).width()
                , d = c + 1;
            this.$list.css({
                width: d * this.length,
                marginLeft: (this.viewer.width - c) / 2 - d * b
            })
        },
        resetList: function() {
            this.$list.empty().removeClass(u).css("margin-left", 0)
        },
        initImage: function(b) {
            var c = this.options
                , d = this.$image
                , e = this.viewer
                , f = this.$footer.height()
                , g = e.width
                , h = C(e.height - f, f)
                , i = this.image || {};
            j(d[0], a.proxy(function(d, e) {
                var f, j, k = d / e, l = g, m = h;
                h * k > g ? m = g / k : l = h * k,
                    l = B(.9 * l, d),
                    m = B(.9 * m, e),
                    j = {
                        naturalWidth: d,
                        naturalHeight: e,
                        aspectRatio: k,
                        ratio: l / d,
                        width: l,
                        height: m,
                        left: (g - l) / 2,
                        top: (h - m) / 2
                    },
                    f = a.extend({}, j),
                c.rotatable && (j.rotate = i.rotate || 0,
                    f.rotate = 0),
                c.scalable && (j.scaleX = i.scaleX || 1,
                    j.scaleY = i.scaleY || 1,
                    f.scaleX = 1,
                    f.scaleY = 1),
                    this.image = j,
                    this.initialImage = f,
                a.isFunction(b) && b()
            }, this))
        },
        renderImage: function(b) {
            var c = this.image
                , d = this.$image;
            d.css({
                width: c.width,
                height: c.height,
                marginLeft: c.left,
                marginTop: c.top,
                transform: g(c)
            }),
            a.isFunction(b) && (this.transitioning ? d.one("transitionend", b) : b())
        },
        resetImage: function() {
            this.$image && (this.$image.remove(),
                this.$image = null)
        },
        start: function(b) {
            var c = b.target;
            a(c).is("img") && (this.target = c,
                this.show())
        },
        click: function(b) {
            var c = a(b.target)
                , d = c.data("action")
                , e = this.image;
            switch (d) {
                case "mix":
                    this.isPlayed ? this.stop() : this.options.inline ? this.isFulled ? this.exit() : this.full() : this.hide();
                    break;
                case "view":
                    this.view(c.data("index"));
                    break;
                case "zoom-in":
                    this.zoom(.1, !0);
                    break;
                case "zoom-out":
                    this.zoom(-.1, !0);
                    break;
                case "one-to-one":
                    this.toggle();
                    break;
                case "reset":
                    this.reset();
                    break;
                case "prev":
                    this.prev();
                    break;
                case "play":
                    this.play();
                    break;
                case "next":
                    this.next();
                    break;
                case "rotate-left":
                    this.rotate(-90);
                    break;
                case "rotate-right":
                    this.rotate(90);
                    break;
                case "flip-horizontal":
                    this.scaleX(-e.scaleX || -1);
                    break;
                case "flip-vertical":
                    this.scaleY(-e.scaleY || -1);
                    break;
                default:
                    this.isPlayed && this.stop()
            }
        },
        load: function() {
            var b = this.options
                , c = this.viewer
                , d = this.$image;
            this.timeout && (clearTimeout(this.timeout),
                this.timeout = !1),
                d.removeClass("viewer-invisible").css("cssText", "width:0;height:0;margin-left:" + c.width / 2 + "px;margin-top:" + c.height / 2 + "px;max-width:none!important;visibility:visible;"),
                this.initImage(a.proxy(function() {
                    d.toggleClass(u, b.transition).toggleClass("viewer-move", b.movable),
                        this.renderImage(a.proxy(function() {
                            this.isViewed = !0,
                                this.trigger("viewed.viewer")
                        }, this))
                }, this))
        },
        loadImage: function(b) {
            var c = b.target
                , d = a(c)
                , e = d.parent()
                , f = e.width()
                , g = e.height()
                , h = b.data && b.data.filled;
            j(c, function(a, b) {
                var c = a / b
                    , e = f
                    , i = g;
                g * c > f ? h ? e = g * c : i = f / c : h ? i = f / c : e = g * c,
                    d.css({
                        width: e,
                        height: i,
                        marginLeft: (f - e) / 2,
                        marginTop: (g - i) / 2
                    })
            })
        },
        resize: function() {
            this.initContainer(),
                this.initViewer(),
                this.renderViewer(),
                this.renderList(),
            this.isViewed && this.initImage(a.proxy(function() {
                this.renderImage()
            }, this)),
            this.isPlayed && this.$player.find("img").one("load.viewer", a.proxy(this.loadImage, this)).trigger("load.viewer")
        },
        wheel: function(b) {
            var c = b.originalEvent || b
                , d = D(this.options.zoomRatio) || .1
                , e = 1;
            this.isViewed && (b.preventDefault(),
            this.wheeling || (this.wheeling = !0,
                setTimeout(a.proxy(function() {
                    this.wheeling = !1
                }, this), 50),
                c.deltaY ? e = c.deltaY > 0 ? 1 : -1 : c.wheelDelta ? e = -c.wheelDelta / 120 : c.detail && (e = c.detail > 0 ? 1 : -1),
                this.zoom(-e * d, !0, b)))
        },
        keydown: function(a) {
            var b = this.options
                , c = a.which;
            if (this.isFulled && b.keyboard)
                switch (c) {
                    case 27:
                        this.isPlayed ? this.stop() : b.inline ? this.isFulled && this.exit() : this.hide();
                        break;
                    case 32:
                        this.isPlayed && this.stop();
                        break;
                    case 37:
                        this.prev();
                        break;
                    case 38:
                        a.preventDefault(),
                            this.zoom(b.zoomRatio, !0);
                        break;
                    case 39:
                        this.next();
                        break;
                    case 40:
                        a.preventDefault(),
                            this.zoom(-b.zoomRatio, !0);
                        break;
                    case 48:
                    case 49:
                        (a.ctrlKey || a.shiftKey) && (a.preventDefault(),
                            this.toggle())
                }
        },
        mousedown: function(a) {
            var b, c = this.options, d = a.originalEvent, e = d && d.touches, f = a, g = !!c.movable && "move";
            if (this.isViewed) {
                if (e) {
                    if ((b = e.length) > 1) {
                        if (!c.zoomable || 2 !== b)
                            return;
                        f = e[1],
                            this.startX2 = f.pageX,
                            this.startY2 = f.pageY,
                            g = "zoom"
                    } else
                        this.isSwitchable() && (g = "switch");
                    f = e[0]
                }
                g && (a.preventDefault(),
                    this.action = g,
                    this.startX = f.pageX || d && d.pageX,
                    this.startY = f.pageY || d && d.pageY)
            }
        },
        mousemove: function(a) {
            var b, c = this.options, d = this.action, e = this.$image, f = a.originalEvent, g = f && f.touches, h = a;
            if (this.isViewed) {
                if (g) {
                    if ((b = g.length) > 1) {
                        if (!c.zoomable || 2 !== b)
                            return;
                        h = g[1],
                            this.endX2 = h.pageX,
                            this.endY2 = h.pageY
                    }
                    h = g[0]
                }
                d && (a.preventDefault(),
                "move" === d && c.transition && e.hasClass(u) && e.removeClass(u),
                    this.endX = h.pageX || f && f.pageX,
                    this.endY = h.pageY || f && f.pageY,
                    this.change(a))
            }
        },
        mouseup: function(a) {
            var b = this.action;
            b && (a.preventDefault(),
            "move" === b && this.options.transition && this.$image.addClass(u),
                this.action = !1)
        },
        show: function() {
            var b, c = this.options;
            c.inline || this.transitioning || (this.isBuilt || this.build(),
            a.isFunction(c.show) && this.$element.one("show.viewer", c.show),
            this.trigger("show.viewer").isDefaultPrevented() || (this.$body.addClass("viewer-open"),
                b = this.$viewer.removeClass("viewer-hide"),
                this.$element.one("shown.viewer", a.proxy(function() {
                    this.view(this.target ? this.$images.index(this.target) : this.index),
                        this.target = !1
                }, this)),
                c.transition ? (this.transitioning = !0,
                    b.addClass(u),
                    h(b[0]),
                    b.one("transitionend", a.proxy(this.shown, this)).addClass(t)) : (b.addClass(t),
                    this.shown())))
        },
        hide: function() {
            var b = this.options
                , c = this.$viewer;
            b.inline || this.transitioning || !this.isShown || (a.isFunction(b.hide) && this.$element.one("hide.viewer", b.hide),
            this.trigger("hide.viewer").isDefaultPrevented() || (this.isViewed && b.transition ? (this.transitioning = !0,
                this.$image.one("transitionend", a.proxy(function() {
                    c.one("transitionend", a.proxy(this.hidden, this)).removeClass(t)
                }, this)),
                this.zoomTo(0, !1, !1, !0)) : (c.removeClass(t),
                this.hidden())))
        },
        view: function(b) {
            var c, d, e, f, g, h = this.$title;
            b = Number(b) || 0,
            !this.isShown || this.isPlayed || b < 0 || b >= this.length || this.isViewed && b === this.index || this.trigger("view.viewer").isDefaultPrevented() || (d = this.$items.eq(b),
                e = d.find("img"),
                f = e.data("originalUrl"),
                g = e.attr("alt"),
                this.$image = c = a('<img src="' + f + '" alt="' + g + '">'),
            this.isViewed && this.$items.eq(this.index).removeClass("viewer-active"),
                d.addClass("viewer-active"),
                this.isViewed = !1,
                this.index = b,
                this.image = null,
                this.$canvas.html(c.addClass("viewer-invisible")),
                this.renderList(),
                h.empty(),
                this.$element.one("viewed.viewer", a.proxy(function() {
                    var a = this.image
                        , b = a.naturalWidth
                        , c = a.naturalHeight;
                    h.html(g + " (" + b + " &times; " + c + ")")
                }, this)),
                c[0].complete ? this.load() : (c.one("load.viewer", a.proxy(this.load, this)),
                this.timeout && clearTimeout(this.timeout),
                    this.timeout = setTimeout(a.proxy(function() {
                        c.removeClass("viewer-invisible"),
                            this.timeout = !1
                    }, this), 1e3)))
        },
        prev: function() {
            this.view(C(this.index - 1, 0))
        },
        next: function() {
            this.view(B(this.index + 1, this.length - 1))
        },
        move: function(a, b) {
            var c = this.image;
            this.moveTo(d(a) ? a : c.left + D(a), d(b) ? b : c.top + D(b))
        },
        moveTo: function(a, b) {
            var e = this.image
                , f = !1;
            d(b) && (b = a),
                a = D(a),
                b = D(b),
            this.isViewed && !this.isPlayed && this.options.movable && (c(a) && (e.left = a,
                f = !0),
            c(b) && (e.top = b,
                f = !0),
            f && this.renderImage())
        },
        zoom: function(a, b, c) {
            var d = this.image;
            a = D(a),
                a = a < 0 ? 1 / (1 - a) : 1 + a,
                this.zoomTo(d.width * a / d.naturalWidth, b, c)
        },
        zoomTo: function(a, b, d, e) {
            var f, g, h, i, j, l = this.options, m = .01, n = 100, o = this.image, p = o.width, q = o.height;
            a = C(0, a),
            c(a) && this.isViewed && !this.isPlayed && (e || l.zoomable) && (e || (m = C(m, l.minZoomRatio),
                n = B(n, l.maxZoomRatio),
                a = B(C(a, m), n)),
            a > .95 && a < 1.05 && (a = 1),
                g = o.naturalWidth * a,
                h = o.naturalHeight * a,
                d && (f = d.originalEvent) ? (i = this.$viewer.offset(),
                    j = f.touches ? k(f.touches) : {
                        pageX: d.pageX || f.pageX || 0,
                        pageY: d.pageY || f.pageY || 0
                    },
                    o.left -= (g - p) * ((j.pageX - i.left - o.left) / p),
                    o.top -= (h - q) * ((j.pageY - i.top - o.top) / q)) : (o.left -= (g - p) / 2,
                    o.top -= (h - q) / 2),
                o.width = g,
                o.height = h,
                o.ratio = a,
                this.renderImage(),
            b && this.tooltip())
        },
        rotate: function(a) {
            this.rotateTo((this.image.rotate || 0) + D(a))
        },
        rotateTo: function(a) {
            var b = this.image;
            a = D(a),
            c(a) && this.isViewed && !this.isPlayed && this.options.rotatable && (b.rotate = a,
                this.renderImage())
        },
        scale: function(a, b) {
            var e = this.image
                , f = !1;
            d(b) && (b = a),
                a = D(a),
                b = D(b),
            this.isViewed && !this.isPlayed && this.options.scalable && (c(a) && (e.scaleX = a,
                f = !0),
            c(b) && (e.scaleY = b,
                f = !0),
            f && this.renderImage())
        },
        scaleX: function(a) {
            this.scale(a, this.image.scaleY)
        },
        scaleY: function(a) {
            this.scale(this.image.scaleX, a)
        },
        play: function() {
            var b, d = this.options, e = this.$player, f = a.proxy(this.loadImage, this), g = [], h = 0, i = 0;
            this.isShown && !this.isPlayed && (d.fullscreen && this.requestFullscreen(),
                this.isPlayed = !0,
                e.addClass("viewer-show"),
                this.$items.each(function(b) {
                    var c = a(this)
                        , j = c.find("img")
                        , k = a('<img src="' + j.data("originalUrl") + '" alt="' + j.attr("alt") + '">');
                    h++,
                        k.addClass("viewer-fade").toggleClass(u, d.transition),
                    c.hasClass("viewer-active") && (k.addClass(t),
                        i = b),
                        g.push(k),
                        k.one("load.viewer", {
                            filled: !1
                        }, f),
                        e.append(k)
                }),
            c(d.interval) && d.interval > 0 && (b = a.proxy(function() {
                this.playing = setTimeout(function() {
                    g[i].removeClass(t),
                        i++,
                        i = i < h ? i : 0,
                        g[i].addClass(t),
                        b()
                }, d.interval)
            }, this),
            h > 1 && b()))
        },
        stop: function() {
            this.isPlayed && (this.options.fullscreen && this.exitFullscreen(),
                this.isPlayed = !1,
                clearTimeout(this.playing),
                this.$player.removeClass("viewer-show").empty())
        },
        full: function() {
            var b = this.options
                , c = this.$image
                , d = this.$list;
            this.isShown && !this.isPlayed && !this.isFulled && b.inline && (this.isFulled = !0,
                this.$body.addClass("viewer-open"),
                this.$button.addClass("viewer-fullscreen-exit"),
            b.transition && (c.removeClass(u),
                d.removeClass(u)),
                this.$viewer.addClass("viewer-fixed").removeAttr("style").css("z-index", b.zIndex),
                this.initContainer(),
                this.viewer = a.extend({}, this.container),
                this.renderList(),
                this.initImage(a.proxy(function() {
                    this.renderImage(function() {
                        b.transition && setTimeout(function() {
                            c.addClass(u),
                                d.addClass(u)
                        }, 0)
                    })
                }, this)))
        },
        exit: function() {
            var b = this.options
                , c = this.$image
                , d = this.$list;
            this.isFulled && (this.isFulled = !1,
                this.$body.removeClass("viewer-open"),
                this.$button.removeClass("viewer-fullscreen-exit"),
            b.transition && (c.removeClass(u),
                d.removeClass(u)),
                this.$viewer.removeClass("viewer-fixed").css("z-index", b.zIndexInline),
                this.viewer = a.extend({}, this.parent),
                this.renderViewer(),
                this.renderList(),
                this.initImage(a.proxy(function() {
                    this.renderImage(function() {
                        b.transition && setTimeout(function() {
                            c.addClass(u),
                                d.addClass(u)
                        }, 0)
                    })
                }, this)))
        },
        tooltip: function() {
            var b = this.options
                , c = this.$tooltip
                , d = this.image
                , e = ["viewer-show", "viewer-fade", u].join(" ");
            this.isViewed && !this.isPlayed && b.tooltip && (c.text(y(100 * d.ratio) + "%"),
                this.tooltiping ? clearTimeout(this.tooltiping) : b.transition ? (this.fading && c.trigger("transitionend"),
                    c.addClass(e),
                    h(c[0]),
                    c.addClass(t)) : c.addClass("viewer-show"),
                this.tooltiping = setTimeout(a.proxy(function() {
                    b.transition ? (c.one("transitionend", a.proxy(function() {
                        c.removeClass(e),
                            this.fading = !1
                    }, this)).removeClass(t),
                        this.fading = !0) : c.removeClass("viewer-show"),
                        this.tooltiping = !1
                }, this), 1e3))
        },
        toggle: function() {
            1 === this.image.ratio ? this.zoomTo(this.initialImage.ratio, !0) : this.zoomTo(1, !0)
        },
        reset: function() {
            this.isViewed && !this.isPlayed && (this.image = a.extend({}, this.initialImage),
                this.renderImage())
        },
        update: function() {
            var b, c = this.$element, d = this.$images, e = [];
            if (this.isImg) {
                if (!c.parent().length)
                    return this.destroy()
            } else
                this.$images = d = c.find("img"),
                    this.length = d.length;
            this.isBuilt && (a.each(this.$items, function(b) {
                var c = a(this).find("img")[0]
                    , f = d[b];
                f ? f.src !== c.src && e.push(b) : e.push(b)
            }),
                this.$list.width("auto"),
                this.initList(),
            this.isShown && (this.length ? this.isViewed && (b = a.inArray(this.index, e),
                b >= 0 ? (this.isViewed = !1,
                    this.view(C(this.index - (b + 1), 0))) : this.$items.eq(this.index).addClass("viewer-active")) : (this.$image = null,
                this.isViewed = !1,
                this.index = 0,
                this.image = null,
                this.$canvas.empty(),
                this.$title.empty())))
        },
        destroy: function() {
            var a = this.$element;
            this.options.inline ? this.unbind() : (this.isShown && this.unbind(),
                a.off("click.viewer", this.start)),
                this.unbuild(),
                a.removeData("viewer")
        },
        trigger: function(b, c) {
            var d = a.Event(b, c);
            return this.$element.trigger(d),
                d
        },
        shown: function() {
            var b = this.options;
            this.transitioning = !1,
                this.isFulled = !0,
                this.isShown = !0,
                this.isVisible = !0,
                this.render(),
                this.bind(),
            a.isFunction(b.shown) && this.$element.one("shown.viewer", b.shown),
                this.trigger("shown.viewer")
        },
        hidden: function() {
            var b = this.options;
            this.transitioning = !1,
                this.isViewed = !1,
                this.isFulled = !1,
                this.isShown = !1,
                this.isVisible = !1,
                this.unbind(),
                this.$body.removeClass("viewer-open"),
                this.$viewer.addClass("viewer-hide"),
                this.resetList(),
                this.resetImage(),
            a.isFunction(b.hidden) && this.$element.one("hidden.viewer", b.hidden),
                this.trigger("hidden.viewer")
        },
        requestFullscreen: function() {
            var a = document.documentElement;
            !this.isFulled || document.fullscreenElement || document.mozFullScreenElement || document.webkitFullscreenElement || document.msFullscreenElement || (a.requestFullscreen ? a.requestFullscreen() : a.msRequestFullscreen ? a.msRequestFullscreen() : a.mozRequestFullScreen ? a.mozRequestFullScreen() : a.webkitRequestFullscreen && a.webkitRequestFullscreen(Element.ALLOW_KEYBOARD_INPUT))
        },
        exitFullscreen: function() {
            this.isFulled && (document.exitFullscreen ? document.exitFullscreen() : document.msExitFullscreen ? document.msExitFullscreen() : document.mozCancelFullScreen ? document.mozCancelFullScreen() : document.webkitExitFullscreen && document.webkitExitFullscreen())
        },
        change: function(a) {
            var b = this.endX - this.startX
                , c = this.endY - this.startY;
            switch (this.action) {
                case "move":
                    this.move(b, c);
                    break;
                case "zoom":
                    this.zoom(function(a, b, c, d) {
                        var e = z(a * a + b * b);
                        return (z(c * c + d * d) - e) / e
                    }(A(this.startX - this.startX2), A(this.startY - this.startY2), A(this.endX - this.endX2), A(this.endY - this.endY2)), !1, a),
                        this.startX2 = this.endX2,
                        this.startY2 = this.endY2;
                    break;
                case "switch":
                    this.action = "switched",
                    A(b) > A(c) && (b > 1 ? this.prev() : b < -1 && this.next())
            }
            this.startX = this.endX,
                this.startY = this.endY
        },
        isSwitchable: function() {
            var a = this.image
                , b = this.viewer;
            return a.left >= 0 && a.top >= 0 && a.width <= b.width && a.height <= b.height
        }
    },
        m.DEFAULTS = {
            inline: !1,
            button: !0,
            navbar: !0,
            title: !0,
            toolbar: !0,
            tooltip: !0,
            movable: !0,
            zoomable: !0,
            rotatable: !0,
            scalable: !0,
            transition: !0,
            fullscreen: !0,
            keyboard: !0,
            interval: 5e3,
            minWidth: 200,
            minHeight: 100,
            zoomRatio: .1,
            minZoomRatio: .01,
            maxZoomRatio: 100,
            zIndex: 2015,
            zIndexInline: 0,
            url: "src",
            build: null,
            built: null,
            show: null,
            shown: null,
            hide: null,
            hidden: null,
            view: null,
            viewed: null
        },
        m.setDefaults = function(b) {
            a.extend(m.DEFAULTS, b)
        }
        ,
        m.TEMPLATE = '<div class="viewer-container"><div class="viewer-canvas"></div><div class="viewer-footer"><div class="viewer-title"></div><ul class="viewer-toolbar"><li class="viewer-zoom-in" data-action="zoom-in"></li><li class="viewer-zoom-out" data-action="zoom-out"></li><li class="viewer-one-to-one" data-action="one-to-one"></li><li class="viewer-reset" data-action="reset"></li><li class="viewer-prev" data-action="prev"></li><li class="viewer-play" data-action="play"></li><li class="viewer-next" data-action="next"></li><li class="viewer-rotate-left" data-action="rotate-left"></li><li class="viewer-rotate-right" data-action="rotate-right"></li><li class="viewer-flip-horizontal" data-action="flip-horizontal"></li><li class="viewer-flip-vertical" data-action="flip-vertical"></li></ul><div class="viewer-navbar"><ul class="viewer-list"></ul></div></div><div class="viewer-tooltip"></div><div class="viewer-button" data-action="mix"></div><div class="viewer-player"></div></div>',
        m.other = a.fn.viewer,
        a.fn.viewer = function(c) {
            var f, g = e(arguments, 1);
            return this.each(function() {
                var d, e = a(this), h = e.data("viewer");
                if (!h) {
                    if (/destroy|hide|exit|stop|reset/.test(c))
                        return;
                    e.data("viewer", h = new m(this,c))
                }
                b(c) && a.isFunction(d = h[c]) && (f = d.apply(h, g))
            }),
                d(f) ? this : f
        }
        ,
        a.fn.viewer.Constructor = m,
        a.fn.viewer.setDefaults = m.setDefaults,
        a.fn.viewer.noConflict = function() {
            return a.fn.viewer = m.other,
                this
        }
}),
    function(a) {
        "function" == typeof define && define.amd ? define("viewer", ["jquery"], a) : a("object" == typeof exports ? require("jquery") : jQuery)
    }(function(a) {
        "use strict";
        function b(a) {
            return "string" == typeof a
        }
        function c(a) {
            return "number" == typeof a && !isNaN(a)
        }
        function d(a) {
            return void 0 === a
        }
        function e(a, b) {
            var d = [];
            return c(b) && d.push(b),
                d.slice.apply(a, d)
        }
        function f(a, b) {
            var c = e(arguments, 2);
            return function() {
                return a.apply(b, c.concat(e(arguments)))
            }
        }
        function g(a) {
            var b = []
                , d = a.rotate
                , e = a.scaleX
                , f = a.scaleY;
            return c(d) && b.push("rotate(" + d + "deg)"),
            c(e) && c(f) && b.push("scale(" + e + "," + f + ")"),
                b.length ? b.join(" ") : "none"
        }
        function h(a) {
            return a.offsetWidth
        }
        function i(a) {
            return b(a) ? a.replace(/^.*\//, "").replace(/[\?&#].*$/, "") : ""
        }
        function j(a, b) {
            var c;
            return a.naturalWidth ? b(a.naturalWidth, a.naturalHeight) : (c = document.createElement("img"),
                c.onload = function() {
                    b(this.width, this.height)
                }
                ,
                void (c.src = a.src))
        }
        function k(b) {
            var c = b.length
                , d = 0
                , e = 0;
            return c && (a.each(b, function(a, b) {
                d += b.pageX,
                    e += b.pageY
            }),
                d /= c,
                e /= c),
                {
                    pageX: d,
                    pageY: e
                }
        }
        function l(a) {
            switch (a) {
                case 2:
                    return v;
                case 3:
                    return w;
                case 4:
                    return x
            }
        }
        function m(b, c) {
            this.$element = a(b),
                this.options = a.extend({}, m.DEFAULTS, a.isPlainObject(c) && c),
                this.isImg = !1,
                this.isBuilt = !1,
                this.isShown = !1,
                this.isViewed = !1,
                this.isFulled = !1,
                this.isPlayed = !1,
                this.wheeling = !1,
                this.playing = !1,
                this.fading = !1,
                this.tooltiping = !1,
                this.transitioning = !1,
                this.action = !1,
                this.target = !1,
                this.timeout = !1,
                this.index = 0,
                this.length = 0,
                this.init()
        }
        var n = a(window)
            , o = a(document)
            , p = "viewer"
            , q = document.createElement(p)
            , r = "viewer-fixed"
            , s = "viewer-open"
            , t = "viewer-show"
            , u = "viewer-hide"
            , v = "viewer-hide-xs-down"
            , w = "viewer-hide-sm-down"
            , x = "viewer-hide-md-down"
            , y = "viewer-fade"
            , z = "viewer-in"
            , A = "viewer-active"
            , B = "viewer-invisible"
            , C = "viewer-transition"
            , D = "viewer-fullscreen-exit"
            , E = "img"
            , F = "mousedown touchstart pointerdown MSPointerDown"
            , G = "mousemove touchmove pointermove MSPointerMove"
            , H = "mouseup touchend touchcancel pointerup pointercancel MSPointerUp MSPointerCancel"
            , I = "wheel mousewheel DOMMouseScroll"
            , J = "transitionend"
            , K = "load." + p
            , L = "keydown." + p
            , M = "click." + p
            , N = "resize." + p
            , O = "build." + p
            , P = "built." + p
            , Q = "show." + p
            , R = "shown." + p
            , S = "hide." + p
            , T = "hidden." + p
            , U = "view." + p
            , V = "viewed." + p
            , W = void 0 !== q.style.transition
            , X = Math.round
            , Y = Math.sqrt
            , Z = Math.abs
            , $ = Math.min
            , _ = Math.max
            , aa = Number;
        m.prototype = {
            constructor: m,
            init: function() {
                var b = this.options
                    , c = this.$element
                    , d = c.is(E)
                    , e = d ? c : c.find(E)
                    , f = e.length
                    , g = a.proxy(this.ready, this);
                f && (a.isFunction(b.build) && c.one(O, b.build),
                this.trigger(O).isDefaultPrevented() || (W || (b.transition = !1),
                    this.isImg = d,
                    this.length = f,
                    this.count = 0,
                    this.$images = e,
                    this.$body = a("body"),
                    b.inline ? (c.one(P, a.proxy(function() {
                        this.view()
                    }, this)),
                        e.each(function() {
                            this.complete ? g() : a(this).one(K, g)
                        })) : c.on(M, a.proxy(this.start, this))))
            },
            ready: function() {
                ++this.count === this.length && this.build()
            },
            build: function() {
                var b, c, d, e, f, g, h = this.options, i = this.$element;
                this.isBuilt || (this.$parent = b = i.parent(),
                    this.$viewer = c = a(m.TEMPLATE),
                    this.$canvas = c.find(".viewer-canvas"),
                    this.$footer = c.find(".viewer-footer"),
                    this.$title = d = c.find(".viewer-title"),
                    this.$toolbar = e = c.find(".viewer-toolbar"),
                    this.$navbar = f = c.find(".viewer-navbar"),
                    this.$button = g = c.find(".viewer-button"),
                    this.$tooltip = c.find(".viewer-tooltip"),
                    this.$player = c.find(".viewer-player"),
                    this.$list = c.find(".viewer-list"),
                    d.addClass(h.title ? l(h.title) : u),
                    e.addClass(h.toolbar ? l(h.toolbar) : u),
                    e.find("li[class*=zoom]").toggleClass(B, !h.zoomable),
                    e.find("li[class*=flip]").toggleClass(B, !h.scalable),
                h.rotatable || e.find("li[class*=rotate]").addClass(B).appendTo(e),
                    f.addClass(h.navbar ? l(h.navbar) : u),
                    g.toggleClass(u, !h.button),
                    h.inline ? (g.addClass("viewer-fullscreen"),
                        c.css("z-index", h.zIndexInline),
                    "static" === b.css("position") && b.css("position", "relative")) : (g.addClass("viewer-close"),
                        c.css("z-index", h.zIndex).addClass([r, y, u].join(" "))),
                    i.after(c),
                h.inline && (this.render(),
                    this.bind(),
                    this.isShown = !0),
                    this.isBuilt = !0,
                a.isFunction(h.built) && i.one(P, h.built),
                    this.trigger(P))
            },
            unbuild: function() {
                this.isBuilt && (this.isBuilt = !1,
                    this.$viewer.remove())
            },
            bind: function() {
                var b = this.options
                    , c = this.$element;
                a.isFunction(b.view) && c.on(U, b.view),
                a.isFunction(b.viewed) && c.on(V, b.viewed),
                    this.$viewer.on(M, a.proxy(this.click, this)).on(I, a.proxy(this.wheel, this)),
                    this.$canvas.on(F, a.proxy(this.mousedown, this)),
                    o.on(G, this._mousemove = f(this.mousemove, this)).on(H, this._mouseup = f(this.mouseup, this)).on(L, this._keydown = f(this.keydown, this)),
                    n.on(N, this._resize = f(this.resize, this))
            },
            unbind: function() {
                var b = this.options
                    , c = this.$element;
                a.isFunction(b.view) && c.off(U, b.view),
                a.isFunction(b.viewed) && c.off(V, b.viewed),
                    this.$viewer.off(M, this.click).off(I, this.wheel),
                    this.$canvas.off(F, this.mousedown),
                    o.off(G, this._mousemove).off(H, this._mouseup).off(L, this._keydown),
                    n.off(N, this._resize)
            },
            render: function() {
                this.initContainer(),
                    this.initViewer(),
                    this.initList(),
                    this.renderViewer()
            },
            initContainer: function() {
                this.container = {
                    width: n.innerWidth(),
                    height: n.innerHeight()
                }
            },
            initViewer: function() {
                var b, c = this.options, d = this.$parent;
                c.inline && (this.parent = b = {
                    width: _(d.width(), c.minWidth),
                    height: _(d.height(), c.minHeight)
                }),
                !this.isFulled && b || (b = this.container),
                    this.viewer = a.extend({}, b)
            },
            renderViewer: function() {
                this.options.inline && !this.isFulled && this.$viewer.css(this.viewer)
            },
            initList: function() {
                var c = this.options
                    , d = this.$element
                    , e = this.$list
                    , f = [];
                this.$images.each(function(d) {
                    var e = this.src
                        , g = this.alt || i(e)
                        , h = c.url;
                    e && (b(h) ? h = this.getAttribute(h) : a.isFunction(h) && (h = h.call(this, this)),
                        f.push('<li><img src="' + e + '" data-action="view" data-index="' + d + '" data-original-url="' + (h || e) + '" alt="' + g + '"></li>'))
                }),
                    e.html(f.join("")).find(E).one(K, {
                        filled: !0
                    }, a.proxy(this.loadImage, this)),
                    this.$items = e.children(),
                c.transition && d.one(V, function() {
                    e.addClass(C)
                })
            },
            renderList: function(a) {
                var b = a || this.index
                    , c = this.$items.eq(b).width()
                    , d = c + 1;
                this.$list.css({
                    width: d * this.length,
                    marginLeft: (this.viewer.width - c) / 2 - d * b
                })
            },
            resetList: function() {
                this.$list.empty().removeClass(C).css("margin-left", 0)
            },
            initImage: function(b) {
                var c = this.options
                    , d = this.$image
                    , e = this.viewer
                    , f = this.$footer.height()
                    , g = e.width
                    , h = _(e.height - f, f)
                    , i = this.image || {};
                j(d[0], a.proxy(function(d, e) {
                    var f, j, k = d / e, l = g, m = h;
                    h * k > g ? m = g / k : l = h * k,
                        l = $(.9 * l, d),
                        m = $(.9 * m, e),
                        j = {
                            naturalWidth: d,
                            naturalHeight: e,
                            aspectRatio: k,
                            ratio: l / d,
                            width: l,
                            height: m,
                            left: (g - l) / 2,
                            top: (h - m) / 2
                        },
                        f = a.extend({}, j),
                    c.rotatable && (j.rotate = i.rotate || 0,
                        f.rotate = 0),
                    c.scalable && (j.scaleX = i.scaleX || 1,
                        j.scaleY = i.scaleY || 1,
                        f.scaleX = 1,
                        f.scaleY = 1),
                        this.image = j,
                        this.initialImage = f,
                    a.isFunction(b) && b()
                }, this))
            },
            renderImage: function(b) {
                var c = this.image
                    , d = this.$image;
                d.css({
                    width: c.width,
                    height: c.height,
                    marginLeft: c.left,
                    marginTop: c.top,
                    transform: g(c)
                }),
                a.isFunction(b) && (this.transitioning ? d.one(J, b) : b())
            },
            resetImage: function() {
                this.$image && (this.$image.remove(),
                    this.$image = null)
            },
            start: function(b) {
                var c = b.target;
                a(c).is("img") && (this.target = c,
                    this.show())
            },
            click: function(b) {
                var c = a(b.target)
                    , d = c.data("action")
                    , e = this.image;
                switch (d) {
                    case "mix":
                        this.isPlayed ? this.stop() : this.options.inline ? this.isFulled ? this.exit() : this.full() : this.hide();
                        break;
                    case "view":
                        this.view(c.data("index"));
                        break;
                    case "zoom-in":
                        this.zoom(.1, !0);
                        break;
                    case "zoom-out":
                        this.zoom(-.1, !0);
                        break;
                    case "one-to-one":
                        this.toggle();
                        break;
                    case "reset":
                        this.reset();
                        break;
                    case "prev":
                        this.prev();
                        break;
                    case "play":
                        this.play();
                        break;
                    case "next":
                        this.next();
                        break;
                    case "rotate-left":
                        this.rotate(-90);
                        break;
                    case "rotate-right":
                        this.rotate(90);
                        break;
                    case "flip-horizontal":
                        this.scaleX(-e.scaleX || -1);
                        break;
                    case "flip-vertical":
                        this.scaleY(-e.scaleY || -1);
                        break;
                    default:
                        this.isPlayed && this.stop()
                }
            },
            load: function() {
                var b = this.options
                    , c = this.viewer
                    , d = this.$image;
                this.timeout && (clearTimeout(this.timeout),
                    this.timeout = !1),
                    d.removeClass(B).css("cssText", "width:0;height:0;margin-left:" + c.width / 2 + "px;margin-top:" + c.height / 2 + "px;max-width:none!important;visibility:visible;"),
                    this.initImage(a.proxy(function() {
                        d.toggleClass(C, b.transition).toggleClass("viewer-move", b.movable),
                            this.renderImage(a.proxy(function() {
                                this.isViewed = !0,
                                    this.trigger(V)
                            }, this))
                    }, this))
            },
            loadImage: function(b) {
                var c = b.target
                    , d = a(c)
                    , e = d.parent()
                    , f = e.width()
                    , g = e.height()
                    , h = b.data && b.data.filled;
                j(c, function(a, b) {
                    var c = a / b
                        , e = f
                        , i = g;
                    g * c > f ? h ? e = g * c : i = f / c : h ? i = f / c : e = g * c,
                        d.css({
                            width: e,
                            height: i,
                            marginLeft: (f - e) / 2,
                            marginTop: (g - i) / 2
                        })
                })
            },
            resize: function() {
                this.initContainer(),
                    this.initViewer(),
                    this.renderViewer(),
                    this.renderList(),
                this.isViewed && this.initImage(a.proxy(function() {
                    this.renderImage()
                }, this)),
                this.isPlayed && this.$player.find(E).one(K, a.proxy(this.loadImage, this)).trigger(K)
            },
            wheel: function(b) {
                var c = b.originalEvent || b
                    , d = aa(this.options.zoomRatio) || .1
                    , e = 1;
                this.isViewed && (b.preventDefault(),
                this.wheeling || (this.wheeling = !0,
                    setTimeout(a.proxy(function() {
                        this.wheeling = !1
                    }, this), 50),
                    c.deltaY ? e = c.deltaY > 0 ? 1 : -1 : c.wheelDelta ? e = -c.wheelDelta / 120 : c.detail && (e = c.detail > 0 ? 1 : -1),
                    this.zoom(-e * d, !0, b)))
            },
            keydown: function(a) {
                var b = this.options
                    , c = a.which;
                if (this.isFulled && b.keyboard)
                    switch (c) {
                        case 27:
                            this.isPlayed ? this.stop() : b.inline ? this.isFulled && this.exit() : this.hide();
                            break;
                        case 32:
                            this.isPlayed && this.stop();
                            break;
                        case 37:
                            this.prev();
                            break;
                        case 38:
                            a.preventDefault(),
                                this.zoom(b.zoomRatio, !0);
                            break;
                        case 39:
                            this.next();
                            break;
                        case 40:
                            a.preventDefault(),
                                this.zoom(-b.zoomRatio, !0);
                            break;
                        case 48:
                        case 49:
                            (a.ctrlKey || a.shiftKey) && (a.preventDefault(),
                                this.toggle())
                    }
            },
            mousedown: function(a) {
                var b, c = this.options, d = a.originalEvent, e = d && d.touches, f = a, g = !!c.movable && "move";
                if (this.isViewed) {
                    if (e) {
                        if ((b = e.length) > 1) {
                            if (!c.zoomable || 2 !== b)
                                return;
                            f = e[1],
                                this.startX2 = f.pageX,
                                this.startY2 = f.pageY,
                                g = "zoom"
                        } else
                            this.isSwitchable() && (g = "switch");
                        f = e[0]
                    }
                    g && (a.preventDefault(),
                        this.action = g,
                        this.startX = f.pageX || d && d.pageX,
                        this.startY = f.pageY || d && d.pageY)
                }
            },
            mousemove: function(a) {
                var b, c = this.options, d = this.action, e = this.$image, f = a.originalEvent, g = f && f.touches, h = a;
                if (this.isViewed) {
                    if (g) {
                        if ((b = g.length) > 1) {
                            if (!c.zoomable || 2 !== b)
                                return;
                            h = g[1],
                                this.endX2 = h.pageX,
                                this.endY2 = h.pageY
                        }
                        h = g[0]
                    }
                    d && (a.preventDefault(),
                    "move" === d && c.transition && e.hasClass(C) && e.removeClass(C),
                        this.endX = h.pageX || f && f.pageX,
                        this.endY = h.pageY || f && f.pageY,
                        this.change(a))
                }
            },
            mouseup: function(a) {
                var b = this.action;
                b && (a.preventDefault(),
                "move" === b && this.options.transition && this.$image.addClass(C),
                    this.action = !1)
            },
            show: function() {
                var b, c = this.options;
                c.inline || this.transitioning || (this.isBuilt || this.build(),
                a.isFunction(c.show) && this.$element.one(Q, c.show),
                this.trigger(Q).isDefaultPrevented() || (this.$body.addClass(s),
                    b = this.$viewer.removeClass(u),
                    this.$element.one(R, a.proxy(function() {
                        this.view(this.target ? this.$images.index(this.target) : this.index),
                            this.target = !1
                    }, this)),
                    c.transition ? (this.transitioning = !0,
                        b.addClass(C),
                        h(b[0]),
                        b.one(J, a.proxy(this.shown, this)).addClass(z)) : (b.addClass(z),
                        this.shown())))
            },
            hide: function() {
                var b = this.options
                    , c = this.$viewer;
                b.inline || this.transitioning || !this.isShown || (a.isFunction(b.hide) && this.$element.one(S, b.hide),
                this.trigger(S).isDefaultPrevented() || (this.isViewed && b.transition ? (this.transitioning = !0,
                    this.$image.one(J, a.proxy(function() {
                        c.one(J, a.proxy(this.hidden, this)).removeClass(z)
                    }, this)),
                    this.zoomTo(0, !1, !1, !0)) : (c.removeClass(z),
                    this.hidden())))
            },
            view: function(b) {
                var c, d, e, f, g, h = this.$title;
                b = Number(b) || 0,
                !this.isShown || this.isPlayed || 0 > b || b >= this.length || this.isViewed && b === this.index || this.trigger(U).isDefaultPrevented() || (d = this.$items.eq(b),
                    e = d.find(E),
                    f = e.data("originalUrl"),
                    g = e.attr("alt"),
                    this.$image = c = a('<img src="' + f + '" alt="' + g + '">'),
                this.isViewed && this.$items.eq(this.index).removeClass(A),
                    d.addClass(A),
                    this.isViewed = !1,
                    this.index = b,
                    this.image = null,
                    this.$canvas.html(c.addClass(B)),
                    this.renderList(),
                    h.empty(),
                    this.$element.one(V, a.proxy(function() {
                        var a = this.image
                            , b = a.naturalWidth
                            , c = a.naturalHeight;
                        h.html(g + " (" + b + " &times; " + c + ")")
                    }, this)),
                    c[0].complete ? this.load() : (c.one(K, a.proxy(this.load, this)),
                    this.timeout && clearTimeout(this.timeout),
                        this.timeout = setTimeout(a.proxy(function() {
                            c.removeClass(B),
                                this.timeout = !1
                        }, this), 1e3)))
            },
            prev: function() {
                this.view(_(this.index - 1, 0))
            },
            next: function() {
                this.view($(this.index + 1, this.length - 1))
            },
            move: function(a, b) {
                var c = this.image;
                this.moveTo(d(a) ? a : c.left + aa(a), d(b) ? b : c.top + aa(b))
            },
            moveTo: function(a, b) {
                var e = this.image
                    , f = !1;
                d(b) && (b = a),
                    a = aa(a),
                    b = aa(b),
                this.isViewed && !this.isPlayed && this.options.movable && (c(a) && (e.left = a,
                    f = !0),
                c(b) && (e.top = b,
                    f = !0),
                f && this.renderImage())
            },
            zoom: function(a, b, c) {
                var d = this.image;
                a = aa(a),
                    a = 0 > a ? 1 / (1 - a) : 1 + a,
                    this.zoomTo(d.width * a / d.naturalWidth, b, c)
            },
            zoomTo: function(a, b, d, e) {
                var f, g, h, i, j, l = this.options, m = .01, n = 100, o = this.image, p = o.width, q = o.height;
                a = _(0, a),
                c(a) && this.isViewed && !this.isPlayed && (e || l.zoomable) && (e || (m = _(m, l.minZoomRatio),
                    n = $(n, l.maxZoomRatio),
                    a = $(_(a, m), n)),
                a > .95 && 1.05 > a && (a = 1),
                    g = o.naturalWidth * a,
                    h = o.naturalHeight * a,
                    d && (f = d.originalEvent) ? (i = this.$viewer.offset(),
                        j = f.touches ? k(f.touches) : {
                            pageX: d.pageX || f.pageX || 0,
                            pageY: d.pageY || f.pageY || 0
                        },
                        o.left -= (g - p) * ((j.pageX - i.left - o.left) / p),
                        o.top -= (h - q) * ((j.pageY - i.top - o.top) / q)) : (o.left -= (g - p) / 2,
                        o.top -= (h - q) / 2),
                    o.width = g,
                    o.height = h,
                    o.ratio = a,
                    this.renderImage(),
                b && this.tooltip())
            },
            rotate: function(a) {
                this.rotateTo((this.image.rotate || 0) + aa(a))
            },
            rotateTo: function(a) {
                var b = this.image;
                a = aa(a),
                c(a) && this.isViewed && !this.isPlayed && this.options.rotatable && (b.rotate = a,
                    this.renderImage())
            },
            scale: function(a, b) {
                var e = this.image
                    , f = !1;
                d(b) && (b = a),
                    a = aa(a),
                    b = aa(b),
                this.isViewed && !this.isPlayed && this.options.scalable && (c(a) && (e.scaleX = a,
                    f = !0),
                c(b) && (e.scaleY = b,
                    f = !0),
                f && this.renderImage())
            },
            scaleX: function(a) {
                this.scale(a, this.image.scaleY)
            },
            scaleY: function(a) {
                this.scale(this.image.scaleX, a)
            },
            play: function() {
                var b, d = this.options, e = this.$player, f = a.proxy(this.loadImage, this), g = [], h = 0, i = 0;
                this.isShown && !this.isPlayed && (d.fullscreen && this.requestFullscreen(),
                    this.isPlayed = !0,
                    e.addClass(t),
                    this.$items.each(function(b) {
                        var c = a(this)
                            , j = c.find(E)
                            , k = a('<img src="' + j.data("originalUrl") + '" alt="' + j.attr("alt") + '">');
                        h++,
                            k.addClass(y).toggleClass(C, d.transition),
                        c.hasClass(A) && (k.addClass(z),
                            i = b),
                            g.push(k),
                            k.one(K, {
                                filled: !1
                            }, f),
                            e.append(k)
                    }),
                c(d.interval) && d.interval > 0 && (b = a.proxy(function() {
                    this.playing = setTimeout(function() {
                        g[i].removeClass(z),
                            i++,
                            i = h > i ? i : 0,
                            g[i].addClass(z),
                            b()
                    }, d.interval)
                }, this),
                h > 1 && b()))
            },
            stop: function() {
                this.isPlayed && (this.options.fullscreen && this.exitFullscreen(),
                    this.isPlayed = !1,
                    clearTimeout(this.playing),
                    this.$player.removeClass(t).empty())
            },
            full: function() {
                var b = this.options
                    , c = this.$image
                    , d = this.$list;
                this.isShown && !this.isPlayed && !this.isFulled && b.inline && (this.isFulled = !0,
                    this.$body.addClass(s),
                    this.$button.addClass(D),
                b.transition && (c.removeClass(C),
                    d.removeClass(C)),
                    this.$viewer.addClass(r).removeAttr("style").css("z-index", b.zIndex),
                    this.initContainer(),
                    this.viewer = a.extend({}, this.container),
                    this.renderList(),
                    this.initImage(a.proxy(function() {
                        this.renderImage(function() {
                            b.transition && setTimeout(function() {
                                c.addClass(C),
                                    d.addClass(C)
                            }, 0)
                        })
                    }, this)))
            },
            exit: function() {
                var b = this.options
                    , c = this.$image
                    , d = this.$list;
                this.isFulled && (this.isFulled = !1,
                    this.$body.removeClass(s),
                    this.$button.removeClass(D),
                b.transition && (c.removeClass(C),
                    d.removeClass(C)),
                    this.$viewer.removeClass(r).css("z-index", b.zIndexInline),
                    this.viewer = a.extend({}, this.parent),
                    this.renderViewer(),
                    this.renderList(),
                    this.initImage(a.proxy(function() {
                        this.renderImage(function() {
                            b.transition && setTimeout(function() {
                                c.addClass(C),
                                    d.addClass(C)
                            }, 0)
                        })
                    }, this)))
            },
            tooltip: function() {
                var b = this.options
                    , c = this.$tooltip
                    , d = this.image
                    , e = [t, y, C].join(" ");
                this.isViewed && !this.isPlayed && b.tooltip && (c.text(X(100 * d.ratio) + "%"),
                    this.tooltiping ? clearTimeout(this.tooltiping) : b.transition ? (this.fading && c.trigger(J),
                        c.addClass(e),
                        h(c[0]),
                        c.addClass(z)) : c.addClass(t),
                    this.tooltiping = setTimeout(a.proxy(function() {
                        b.transition ? (c.one(J, a.proxy(function() {
                            c.removeClass(e),
                                this.fading = !1
                        }, this)).removeClass(z),
                            this.fading = !0) : c.removeClass(t),
                            this.tooltiping = !1
                    }, this), 1e3))
            },
            toggle: function() {
                1 === this.image.ratio ? this.zoomTo(this.initialImage.ratio, !0) : this.zoomTo(1, !0)
            },
            reset: function() {
                this.isViewed && !this.isPlayed && (this.image = a.extend({}, this.initialImage),
                    this.renderImage())
            },
            update: function() {
                var b, c = this.$element, d = this.$images, e = [];
                if (this.isImg) {
                    if (!c.parent().length)
                        return this.destroy()
                } else
                    this.$images = d = c.find(E),
                        this.length = d.length;
                this.isBuilt && (a.each(this.$items, function(b) {
                    var c = a(this).find("img")[0]
                        , f = d[b];
                    f ? f.src !== c.src && e.push(b) : e.push(b)
                }),
                    this.$list.width("auto"),
                    this.initList(),
                this.isShown && (this.length ? this.isViewed && (b = a.inArray(this.index, e),
                    b >= 0 ? (this.isViewed = !1,
                        this.view(_(this.index - (b + 1), 0))) : this.$items.eq(this.index).addClass(A)) : (this.$image = null,
                    this.isViewed = !1,
                    this.index = 0,
                    this.image = null,
                    this.$canvas.empty(),
                    this.$title.empty())))
            },
            destroy: function() {
                var a = this.$element;
                this.options.inline ? this.unbind() : (this.isShown && this.unbind(),
                    a.off(M, this.start)),
                    this.unbuild(),
                    a.removeData(p)
            },
            trigger: function(b, c) {
                var d = a.Event(b, c);
                return this.$element.trigger(d),
                    d
            },
            shown: function() {
                var b = this.options;
                this.transitioning = !1,
                    this.isFulled = !0,
                    this.isShown = !0,
                    this.isVisible = !0,
                    this.render(),
                    this.bind(),
                a.isFunction(b.shown) && this.$element.one(R, b.shown),
                    this.trigger(R)
            },
            hidden: function() {
                var b = this.options;
                this.transitioning = !1,
                    this.isViewed = !1,
                    this.isFulled = !1,
                    this.isShown = !1,
                    this.isVisible = !1,
                    this.unbind(),
                    this.$body.removeClass(s),
                    this.$viewer.addClass(u),
                    this.resetList(),
                    this.resetImage(),
                a.isFunction(b.hidden) && this.$element.one(T, b.hidden),
                    this.trigger(T)
            },
            requestFullscreen: function() {
                var a = document.documentElement;
                !this.isFulled || document.fullscreenElement || document.mozFullScreenElement || document.webkitFullscreenElement || document.msFullscreenElement || (a.requestFullscreen ? a.requestFullscreen() : a.msRequestFullscreen ? a.msRequestFullscreen() : a.mozRequestFullScreen ? a.mozRequestFullScreen() : a.webkitRequestFullscreen && a.webkitRequestFullscreen(Element.ALLOW_KEYBOARD_INPUT))
            },
            exitFullscreen: function() {
                this.isFulled && (document.exitFullscreen ? document.exitFullscreen() : document.msExitFullscreen ? document.msExitFullscreen() : document.mozCancelFullScreen ? document.mozCancelFullScreen() : document.webkitExitFullscreen && document.webkitExitFullscreen())
            },
            change: function(a) {
                var b = this.endX - this.startX
                    , c = this.endY - this.startY;
                switch (this.action) {
                    case "move":
                        this.move(b, c);
                        break;
                    case "zoom":
                        this.zoom(function(a, b, c, d) {
                            var e = Y(a * a + b * b);
                            return (Y(c * c + d * d) - e) / e
                        }(Z(this.startX - this.startX2), Z(this.startY - this.startY2), Z(this.endX - this.endX2), Z(this.endY - this.endY2)), !1, a),
                            this.startX2 = this.endX2,
                            this.startY2 = this.endY2;
                        break;
                    case "switch":
                        this.action = "switched",
                        Z(b) > Z(c) && (b > 1 ? this.prev() : -1 > b && this.next())
                }
                this.startX = this.endX,
                    this.startY = this.endY
            },
            isSwitchable: function() {
                var a = this.image
                    , b = this.viewer;
                return a.left >= 0 && a.top >= 0 && a.width <= b.width && a.height <= b.height
            }
        },
            m.DEFAULTS = {
                inline: !1,
                button: !0,
                navbar: !0,
                title: !0,
                toolbar: !0,
                tooltip: !0,
                movable: !0,
                zoomable: !0,
                rotatable: !0,
                scalable: !0,
                transition: !0,
                fullscreen: !0,
                keyboard: !0,
                interval: 5e3,
                minWidth: 200,
                minHeight: 100,
                zoomRatio: .1,
                minZoomRatio: .01,
                maxZoomRatio: 100,
                zIndex: 2015,
                zIndexInline: 0,
                url: "src",
                build: null,
                built: null,
                show: null,
                shown: null,
                hide: null,
                hidden: null,
                view: null,
                viewed: null
            },
            m.setDefaults = function(b) {
                a.extend(m.DEFAULTS, b)
            }
            ,
            m.TEMPLATE = '<div class="viewer-container"><div class="viewer-canvas"></div><div class="viewer-footer"><div class="viewer-title"></div><ul class="viewer-toolbar"><li class="viewer-zoom-in" data-action="zoom-in"></li><li class="viewer-zoom-out" data-action="zoom-out"></li><li class="viewer-one-to-one" data-action="one-to-one"></li><li class="viewer-reset" data-action="reset"></li><li class="viewer-prev" data-action="prev"></li><li class="viewer-play" data-action="play"></li><li class="viewer-next" data-action="next"></li><li class="viewer-rotate-left" data-action="rotate-left"></li><li class="viewer-rotate-right" data-action="rotate-right"></li><li class="viewer-flip-horizontal" data-action="flip-horizontal"></li><li class="viewer-flip-vertical" data-action="flip-vertical"></li></ul><div class="viewer-navbar"><ul class="viewer-list"></ul></div></div><div class="viewer-tooltip"></div><div class="viewer-button" data-action="mix"></div><div class="viewer-player"></div></div>',
            m.other = a.fn.viewer,
            a.fn.viewer = function(c) {
                var f, g = e(arguments, 1);
                return this.each(function() {
                    var d, e = a(this), h = e.data(p);
                    if (!h) {
                        if (/destroy|hide|exit|stop|reset/.test(c))
                            return;
                        e.data(p, h = new m(this,c))
                    }
                    b(c) && a.isFunction(d = h[c]) && (f = d.apply(h, g))
                }),
                    d(f) ? this : f
            }
            ,
            a.fn.viewer.Constructor = m,
            a.fn.viewer.setDefaults = m.setDefaults,
            a.fn.viewer.noConflict = function() {
                return a.fn.viewer = m.other,
                    this
            }
    });
