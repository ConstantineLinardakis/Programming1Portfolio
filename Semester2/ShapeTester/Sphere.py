class Sphere:

    r = 0

    def __init__(self,r):
        self.r = r

    def calcvolume(self):
        print("The volume equals:", str(4*3.14*pow(self.r,3)/3))

    def calcsurface(self):
        print("The surface area equals:", str(4*3.14*pow(self.r,2)))
