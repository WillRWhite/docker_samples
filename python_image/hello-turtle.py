# import turtle
from turtle import Turtle, done

def create_pen(colour:str,speed:int) -> Turtle:
    pen = Turtle()
    pen.color(colour) 
    pen.speed(speed)
    pen.hideturtle()
    return pen

def ngon(pen:Turtle, sides:int, size:int) -> None:
    for _ in range(sides):
        pen.forward(size*100/sides)
        pen.right(360/sides)

pen = create_pen(colour="red",speed=0)
ngon(pen,sides=10,size=10)

pen2 = Turtle(shape="turtle", visible=True)
pen2.speed(1)
pen2.penup()
pen2.goto(0,150)
pen2.pendown()
ngon(pen2,sides=8,size=10)
pen2.hideturtle()
#pen2.forward(100)

done()

###############################################