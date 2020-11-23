class Pyramid:

    b = 0
    h = 0
    s = 0

    def __init__(self,b,h,s):
        self.b = b
        self.h = h
        self.s = s

    def calcvolume(self):
        b = self.b
        h = self.h
        print("The volume equals:", str((1/3) * (b^2) * h))

    def calcsurface(self):
        b = self.b
        h = self.h
        s = self.s
        print("The surface area equals:", str(2(b*s)+b**2))
