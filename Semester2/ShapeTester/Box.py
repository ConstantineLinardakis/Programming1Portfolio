class Box:

    l = 0
    w = 0
    h = 0

    def __init__(self,l,w,h):
        self.l = l
        self.w  = w
        self.h = h

    def calcvolume(self):
        l = self.l
        w = self.w
        h = self.h
        print("The volume equals:", str(w*l*h))

    def calcsurface(self):
        l = self.l
        w = self.w
        h = self.h
        print("The surface area equals:", str(2*w*l + 2*h*l +2*h*w))
