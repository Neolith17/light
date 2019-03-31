light.states.a =
	opacity: 1.00
	index:3
light.states.b =
	opacity: 0.00
	index:0
sth.states.a =
	opacity: 1.00
	index:3
	y:400
sth.states.b =
	y:700

black.states.a =
	opacity: 0.4
	index:2
	
black.states.b =
	opacity: 0.00
	index:0

Apple_iPhone_8.states.a =
	index:1
	blur: 0

Apple_iPhone_8.states.b =
	index:4
	blur: 0

black.onClick (event, layer) ->
	light.stateSwitch("b")
	sth.stateSwitch("b")
	set.stateSwitch("b")
	black.stateSwitch("b")
	Apple_iPhone_8.stateSwitch("b")
	a.blur=0
	a.scale=1

set.states.a =
	opacity: 1.00
	index:3
set.states.b =
	opacity: 0.00
	index:0
	

右上_light.onClick (event, layer) ->
	light.stateSwitch("a")
	black.stateSwitch("a")
	Apple_iPhone_8.stateSwitch("a")
	set.stateSwitch("b")
	a.blur=14
	

下_sth.onClick (event, layer) ->
	sth.animate "a",
		curve: Bezier.linear
		time: 0.25
	black.stateSwitch("a")
	Apple_iPhone_8.stateSwitch("a")
	set.stateSwitch("b")
	a.blur=14
	

Apple_iPhone_8.onClick (event, layer) ->
	Apple_iPhone_8.stateSwitch("a")
	black.stateSwitch("a")
	set.stateSwitch("a")
	a.blur=14
	
	
light_1.states.a =
	opacity: 1.00
	index:3
light_1.states.b =
	opacity: 0.00
	index:0

sth_1.states.a =
	opacity: 1.00
	index:3
	y:400
sth_1.states.b =
	y:700

black_1.states.a =
	opacity: 0.4
	index:2
	
black_1.states.b =
	opacity: 0.00
	index:0

Apple_iPhone_1.states.a =
	index:1
	blur: 0

Apple_iPhone_1.states.b =
	index:4
	blur: 0

black_1.onClick (event, layer) ->
	light_1.stateSwitch("b")
	sth_1.stateSwitch("b")
	set_1.stateSwitch("b")
	
	black_1.stateSwitch("b")
	Apple_iPhone_1.stateSwitch("b")
	a_1.blur=0

set_1.states.a =
	opacity: 1.00
	index:3
set_1.states.b =
	opacity: 0.00
	index:0
	

右上_light_1.onClick (event, layer) ->
	light_1.stateSwitch("a")
	black_1.stateSwitch("a")
	Apple_iPhone_1.stateSwitch("a")
	set_1.stateSwitch("b")
	a_1.blur=14
	

下_sth_1.onClick (event, layer) ->
	sth_1.animate "a",
		curve: Bezier.linear
		time: 0.25
	black_1.stateSwitch("a")
	Apple_iPhone_1.stateSwitch("a")
	set_1.stateSwitch("b")
	a_1.blur=14
	

Apple_iPhone_1.onClick (event, layer) ->
	Apple_iPhone_1.stateSwitch("a")
	black_1.stateSwitch("a")
	set_1.stateSwitch("a")
	a_1.blur=14

page = new PageComponent
	width:375
	height: 320
	x: 0
	y: 10
	borderRadius: 30
	scrollVertical: false
page.parent=sth_1
page.addPage(p1)
page.addPage(p2)


flow = new FlowComponent
flow.showNext(screema)

# Fixed statusBar
flow.header = statusbar_light

# Switch to next screen on tap
左上_set.onTap ->
	flow.showNext(screemb)
	
左上_set_1.onTap ->
	flow.showNext(screemb)

# Return to overview when clicking back arrow	
chevron.onTap ->
	flow.showPrevious()	
mm.onTap ->
	flow.showPrevious()	

p1.onTap ->
	flow.showNext(screema)
	page.parent=sth_1
p2.onTap ->
	flow.showNext(screemc)
	page.parent=sth
a.states.c=
	blur: 0
	scale: 1.4
上_lock.onClick (event, layer) ->
	Apple_iPhone_8.stateSwitch("b")
	a.animate "c",
		curve: Bezier.linear
		time: 0.25






	


