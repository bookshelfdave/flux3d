(function() {
  var Obj3d, Scene, Selectable, _base,
    __hasProp = Object.prototype.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor; child.__super__ = parent.prototype; return child; };

  window.Flux || (window.Flux = {});

  (_base = window.Flux).fluxScenes || (_base.fluxScenes = []);

  Flux.init = function() {
    return alert("Initializing Flux!");
  };

  Flux.createScene = function(c) {
    var scene;
    scene = new Scene(c);
    window.Flux.fluxScenes.push(scene);
    return scene;
  };

  Scene = (function() {

    function Scene(canvas) {
      this.canvas = canvas;
    }

    Scene.prototype.setupGl = function() {
      try {
        return this.gl = this.canvas.getContext("webgl") || this.canvas.getContext("experimental-webgl");
      } catch (e) {
        return alert("Unable to initialize WebGL. Your browser may not support it.");
      }
    };

    return Scene;

  })();

  Selectable = (function() {

    function Selectable() {}

    Selectable.prototype.select = function() {
      return this.selected = true;
    };

    Selectable.prototype.deselect = function() {
      return this.selected = false;
    };

    Selectable.prototype.isSelected = function() {
      return this.selected;
    };

    return Selectable;

  })();

  Obj3d = (function(_super) {

    __extends(Obj3d, _super);

    function Obj3d(oid) {
      this.oid = oid;
      this.faces = [];
      this.edges = [];
      this.verts = [];
      this.halfEdges = {};
      alert("Created a new Obj3d");
    }

    Obj3d.prototype.getId = function() {
      return this.oid;
    };

    Obj3d.prototype.getFaces = function() {
      return this.faces;
    };

    Obj3d.prototype.getEdges = function() {
      return this.edges;
    };

    Obj3d.prototype.getVerts = function() {
      return this.verts;
    };

    Obj3d.prototype.getHalfEdges = function() {
      return this.halfEdges;
    };

    Obj3d.prototype.addVert = function(x, y, z) {
      return this.verts[this.verts.length] = V3.$(x, y, z)({
        addEdge: function(a, b) {
          return alert("Not implemented");
        },
        addFace: function(vertids) {
          return alert("Not implemented");
        }
      });
    };

    Obj3d.prototype.render = function(canvas) {
      return alert("Rendingering to canvas");
    };

    return Obj3d;

  })(Selectable);

}).call(this);
