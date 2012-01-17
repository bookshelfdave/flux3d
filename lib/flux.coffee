
window.Flux ||= {}

window.Flux.fluxScenes ||= []

class Scene
  constructor: (@canvas) ->
  allocateBuffers: ->
  	@objects = []

  objects: ->
  	@objects
  
class Selectable
	select: () ->
		@selected = true
	deselect: () ->
		@selected = false
	isSelected: () ->
		@selected

class Obj3d extends Selectable
	constructor: (oid) ->
		@oid = oid
		@faces = []
		@edges = []
		@verts = []
		@halfEdges = {}
		alert("Created a new Obj3d")

	getId: () ->
		@oid
	getFaces: () ->
		@faces
	getEdges: () ->
		@edges
	getVerts: () ->
		@verts
	getHalfEdges:() ->
		@halfEdges
	addVert: (x,y,z) ->
		@verts[@verts.length] = V3.$(x,y,z)
    addEdge: (a,b) ->
    	alert("Not implemented")
    addFace: (vertids) ->
    	alert("Not implemented")
	render: (canvas) ->
		alert("Rendingering to canvas")	
	
#class HalfEdge extends Selectable
	
#class BoundingBox3d
	


Flux.init = (activeCanvas) -> 
	alert("Initializing Flux!")

Flux.createScene = (canvas) ->
	s = new Scene canvas
	window.Flux.fluxScenes.push s
	