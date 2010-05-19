#!/usr/bin/python
import Image, ImageDraw

size = 10
fmt = 'png'
im = Image.new('RGBA', (size, size), (0, 0, 0, 0))

draw = ImageDraw.Draw(im)
draw.polygon([(0,0), (size-1,0), (0,size-1)], fill='#0051a1')
del draw 

# write to stdout
im.save('corner.%s' % fmt, fmt.upper())

