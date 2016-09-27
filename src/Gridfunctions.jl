xmin(g::GridTopology) = g.xmin
ymin(g::GridTopology) = g.ymin
cellsize(g::GridTopology) = g.xcellsize, g.ycellsize
xcellsize(g::GridTopology) = g.xcellsize
ycellsize(g::GridTopology) = g.ycellsize
xmax(g::GridTopology) = g.xmin + g.xcellsize*g.xcells
ymax(g::GridTopology) = g.ymin + g.ycellsize*g.ycells
xrange(g::GridTopology) = xmin(g):xcellsize(g):xmax(g)
yrange(g::GridTopology) = ymin(g):ycellsize(g):ymax(g)
bbox(g::GridTopology) = Bbox(xmin(g), xmax(g), ymin(g), ymax(g))
show(io::IO, b::Bbox) = println("xmin:\t$(g.xmin)\nxmax:\t$(g.xmax)\nymin:\t$(g.ymin)\nymax:\t$(g.ymax)\n")
