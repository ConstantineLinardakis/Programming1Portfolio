import Box
import Sphere
import Pyramid

myShape = input("Select the shape to calculate: Box = b, Sphere = s, Pyramid = p - ")

if myShape = 'b':
    l = int(input("Print your Length of the box -"))
    w = int(input("Print your Width of the box -"))
    h = int(input("Print your Height of the box - "))
    b = Box.Box(l,w,h)
    print(b.calcvolume())
    print(b.calcsurface())

elif myShape == 's':
    r = int(input("Print your Radius of sphere -"))
    s = Sphere.Sphere(r)
    print(s.calcvolume())
    print(s.calcsurface())

elif myShape == 'p':
    b = int(input("Print your Base of the pyramid -"))
    h = int(input("Print your Height of the pyramid -"))
    s = int(input("Print your slant of the pyramid-"))
    p = Pyramid.Pyramid(b,h,s)
    print(p.calcvolume())
    print(p.calcsurface())
