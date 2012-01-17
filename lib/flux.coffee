
window.Flux ||= {}
window.Flux.fluxScenes ||= []


Flux.init = () -> 
	alert("Initializing Flux!")
  
Flux.createScene = (c) ->
	scene = new Scene(c)
	window.Flux.fluxScenes.push scene
	scene
	  
class Scene
	constructor: (canvas) ->
		@canvas = canvas
		# coffeescript didn't like try/catch in a constructor
	setupGl: () ->
		try
			@gl = @canvas.getContext("webgl") || @canvas.getContext("experimental-webgl")
		catch e  
			alert("Unable to initialize WebGL. Your browser may not support it.")

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
	


