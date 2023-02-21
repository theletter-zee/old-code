#remove free movement
#https://trello.com/b/Mw88jWNe/evasive
#https://www.checkli.com/checklists/view/5edaac65c4e04


#map color #708090
#bg color #273746

import turtle
import random
import os

PATH = os.path.dirname(os.path.realpath(__file__))
os.chdir(f"{PATH}/imgs")

wn = turtle.Screen()
wn.title("Evasive manoeuvres!")
wn.bgcolor("#082225")
wn.bgpic("Lbackground.png")
wn.setup(width=800, height=600)
wn.tracer(0)
wn.addshape("bitmouse.gif")
wn.addshape("biteye.gif")
wn.addshape("invpack.gif")
wn.addshape("lvl5inv.gif")
wn.addshape("lvl8inv.gif")
wn.addshape("lvl10inv.gif")
wn.addshape("lvl20inv.gif")
wn.addshape("lockedinv.gif")
wn.addshape("bitoutline.gif")
wn.addshape("bitlaser.gif")
wn.addshape("LevelUp.gif")
wn.addshape("bitarrow.gif")
wn.addshape("apple.gif")
wn.addshape("bullets.gif")
wn.addshape("Big-bullet.gif")
segment = []

# Player
user_a = turtle.Turtle()
user_a.speed(0)
user_a.shape('square')
user_a.color('white')
user_a.shapesize(1,1,1)
user_a.penup()
user_a.goto(0,-70)

eye = turtle.Turtle()
eye.speed(0)
eye.shape("biteye.gif")
eye.penup()
eye.goto(-4, -125)

bitlaser = turtle.Turtle()
bitlaser.speed(0)
bitlaser.shape("bitlaser.gif")
bitlaser.penup()
bitlaser.goto(-8, -125)

bitoutline = turtle.Turtle()
bitoutline.speed(0)
bitoutline.shape("bitoutline.gif")
bitoutline.penup()
bitoutline.goto(-4, -126)

invpack = turtle.Turtle()
invpack.speed(0)
invpack.shape("lockedinv.gif")
invpack.penup()
invpack.goto(0, -125)

mouse = turtle.Turtle()
mouse.speed(0)
mouse.shape("bitmouse.gif")
mouse.penup()
mouse.goto(8, -135)

#Enemy
rXcords = random.randint(-290,290)
rYcords = random.randint(60,217)
green_pts = 5

square = turtle.Turtle()
square.speed(0)
square.shape('square')
square.color('pink')
square.shapesize(1,1)
square.penup()
square.goto(rXcords,rYcords)


enemy_pts = turtle.Turtle()
enemy_pts.speed(0)
enemy_pts.penup()
enemy_pts.color('yellow')
enemy_pts.goto(square.xcor(),square.ycor()+15)
enemy_pts.style = ('Amatic SC', 10, 'normal')
enemy_pts.write('+'+str(green_pts), font=enemy_pts.style, align='center')
enemy_pts.ht()


#Leveling up
exp_chunk = 15 #20

levelUp = turtle.Turtle()
levelUp.speed(0)
levelUp.shape("LevelUp.gif")
levelUp.penup()
levelUp.goto(-260, 215)
levelUp.ht()

xpOutline = turtle.Turtle()
xpOutline.speed(0)
xpOutline.color('white')
xpOutline.shapesize(0.5,1)
xpOutline.shape("square")
xpOutline.penup()
xpOutline.goto(0,279)

lvl = 1
lvlTxt = turtle.Turtle()
lvlTxt.penup()
lvlTxt.color('white')
lvlTxt.goto(0,230)
lvlTxt.style = ('Roboto', 15, 'normal')
lvlTxt.write('lvl '+str(lvl), font=lvlTxt.style, align='center')
lvlTxt.ht()

exp = 0
exp_goal = 50
xp = turtle.Turtle()
xp.penup()
xp.color('white')
xp.goto(0,250)
xp.style = ('Roboto', 10, 'normal')
xp.write(str(exp)+'/'+str(exp_goal), font=xp.style, align='center')
xp.ht()

bitarrow = turtle.Turtle()
bitarrow.speed(0)
bitarrow.shape("bitarrow.gif")
bitarrow.penup()
bitarrow.goto(-260, 230)
bitarrow.ht()

#Shop gui
shop = turtle.Turtle()
shop.shape('apple.gif')
shop.penup()
shop.goto(216.0,-196.0)

shop_bullets = turtle.Turtle()
shop_bullets.shape('bullets.gif')
shop_bullets.penup()
shop_bullets.goto(23,-194)

shop_big = turtle.Turtle()
shop_big.shape('Big-bullet.gif')
shop_big.penup()
shop_big.goto(-185,-196)
#bullet items
shop_right_bullet5 = turtle.Turtle()
shop_right_bullet5.shape('square')
shop_right_bullet5.color('yellow')
shop_right_bullet5.shapesize(0.6,1)
shop_right_bullet5.penup()
shop_right_bullet5.goto(330,-171)
shop_right_bullet5.ht()


shop_right_bullet4 = turtle.Turtle()
shop_right_bullet4.shape('square')
shop_right_bullet4.color('yellow')
shop_right_bullet4.shapesize(0.6,1)
shop_right_bullet4.penup()
shop_right_bullet4.goto(330,-184)
shop_right_bullet4.ht()

shop_right_bullet3 = turtle.Turtle()
shop_right_bullet3.shape('square')
shop_right_bullet3.color('yellow')
shop_right_bullet3.shapesize(0.6,1)
shop_right_bullet3.penup()
shop_right_bullet3.goto(330,-195)


shop_right_bullet2 = turtle.Turtle()
shop_right_bullet2.shape('square')
shop_right_bullet2.color('yellow')
shop_right_bullet2.shapesize(0.6,1)
shop_right_bullet2.penup()
shop_right_bullet2.goto(330,-208)

shop_right_bullet1 = turtle.Turtle()
shop_right_bullet1.shape('square')
shop_right_bullet1.color('yellow')
shop_right_bullet1.shapesize(0.6,1)
shop_right_bullet1.penup()
shop_right_bullet1.goto(330,-219)


# Gun
gun = turtle.Turtle()
gun.shape('square')
gun.color('black')
gun.shapesize(0.3,0.8,0.1)
gun.penup()
segment.append(gun)

#FIRE BULLETS

bullet = turtle.Turtle()
bullet.shape('circle')
bullet.color('yellow')
bullet.speed(0)
bullet.shapesize(0.3,0.3,0.3)
bullet.penup()
bullet.ht()
bod = [bullet,bullet,bullet]

# Text for score
pts = 0
score = turtle.Turtle()
score.penup()
score.color('black')
score.style = ('Courier', 30, 'italic')
score.write('Score:'+str(pts), font=score.style, align='center')
score.ht()

# Text for cash
cash = 0
bal = turtle.Turtle()
bal.penup()
bal.color('green')
bal.style = ('Courier', 10, 'italic')
bal.goto(5,-9)
bal.write('bal:'+str(cash), font=bal.style, align='center')
bal.ht()


 # USER MOVEMENT
def user_a_left():
  x = user_a.xcor()
  x = x - 6
  user_a.setx(x)

def user_a_right():
  x = user_a.xcor()
  x = x + 6
  user_a.dx = 1
  user_a.setx(x)


bullets = 3

def fireBullet(x,y):
  global bullets
  bullets = bullets - 1
  bod[bl].st()
  bod.pop()
  print('Mouse coords: '+str(x)+','+str(y)+f'\nbullets: {bullets}')

# Keyboard
wn.listen()
wn.onscreenclick(fireBullet, 1)

border_num = 10
bl = len(bod) - 1
while True:
  wn.update() 

  #levelup animation
  if levelUp.isvisible() == True:
    y = levelUp.ycor()
    y = y - 0.09
    levelUp.sety(y)
    if levelUp.ycor() < 200:
      levelUp.sety(215)
      levelUp.dy = 215
      levelUp.ht()

  #expOutline animation
  for i,v in enumerate(xpOutline.shapesize()):
        i = 1 * int(exp_chunk * exp / exp_goal) 
        xpOutline.shapesize(0.5,i+1)

  #inventory space
  if lvl >= 5:
    invpack.shape('lvl5inv.gif')
  if lvl >= 8:
    invpack.shape('lvl8inv.gif')
  if lvl >= 10:
    invpack.shape('lvl10inv.gif')
  if lvl >= 20:
    invpack.shape('lvl20inv.gif')

  #arrow animation
  if bitarrow.isvisible() == True:
    y = bitarrow.ycor()
    y = y + 0.09
    bitarrow.sety(y)
    if bitarrow.ycor() > 250:
      bitarrow.sety(230)
      bitarrow.dy = 230
      bitarrow.ht()

  #Eye animation
  bitlaser.st()
  bitlaser.forward(0.05)
  if bitlaser.xcor() > 5.8:
    bitlaser.ht()
    if bitlaser.xcor() > 25:
      bitlaser.setx(-8)
      bitlaser.dx = -8


  #Player Movement
  if border_num  > 5:
    px = user_a.xcor()
    px = px + -2
    user_a.setx(px)
  if border_num <= 5:
    px = user_a.xcor()
    px = px + 2
    user_a.setx(px)
  if border_num <= -6:
    border_num = 10


  #BORDER CHECK
  if user_a.xcor() > 290:
    border_num -= 1
    user_a.setx(-290)
    user_a.dx = -290
    print(border_num)
  elif user_a.xcor() < -290:
    border_num -= 1
    user_a.setx(290)
    user_a.dx = 290
    print(border_num)


  if len(segment) > 0:
    x = user_a.xcor()
    y = user_a.ycor()
    segment[0].goto(x,y)
    #Thing used as laser
  if len(bod) > 0:
    x = user_a.xcor()
    y = user_a.ycor()
    bod[0].goto(x,y)

# Shooting
  if bullets == 2:
    bl = len(bod) - 1
    shop_right_bullet3.ht()
    y = bod[bl].ycor()
    y = y + 6
    bod[bl].sety(y)
    print(bod)
  elif bullets == 1:
    bl = len(bod) - 2
    shop_right_bullet2.ht()
    y = bod[bl].ycor()
    y = y + 6
    bod[bl].sety(y)
  elif bullets == 0:
    bullet.ht()
    shop_right_bullet1.st()
    shop_right_bullet2.st()
    shop_right_bullet3.st()
    bullets = 3
    bod = [bullet,bullet,bullet]
    
    print('have some more bullets')

  if bullet.ycor() > 340:
    bullet.ht()
    bod = [bullet,bullet,bullet]

  # Object Collision
  if bullet.ycor() > user_a.ycor() and (bullet.ycor() <  square.ycor() + 15 and bullet.ycor() > square.ycor() - 15) and bullet.xcor() <  square.xcor() + 15 and bullet.xcor() > square.xcor() - 15:
    XrandNum = random.randint(-290,290)
    YrandNum = random.randint(100,290)

    rnd_square_Parent = random.randint(1,3)
    square.goto(XrandNum,YrandNum)

    pts = pts + green_pts
    cash = cash + green_pts - 3
    exp = exp + 50

    if rnd_square_Parent == 2:
      rnd_square = round(random.uniform(0.4,0.9),1)
      if rnd_square == 0.4:
        square.color('red')
        green_pts = 30
      elif rnd_square > 0.4 or rnd_square <= 0.6:
        square.color('green')
        green_pts = 25
      elif rnd_square >= 0.6 or rnd_square < 1:
        square.color('green')
        green_pts = 10
    else:
      square.color('pink')
      rnd_square = 1
      green_pts = 5

    xp.reset()
    xp.ht()
    xp.penup()
    xp.color('white')
    xp.goto(0,250)
    xp.style = ('Roboto', 10, 'normal')

    score.reset()
    score.ht()

    bal.reset()
    bal.ht()
    bal.color('green')
    bal.style = ('Courier', 10, 'italic')
    bal.goto(0,-5)
    
    enemy_pts.reset()
    enemy_pts.ht()
    enemy_pts.penup()
    enemy_pts.color('yellow')
    enemy_pts.goto(square.xcor(),square.ycor()+10)
    enemy_pts.style = ('Amatic SC', 10, 'normal')

    bal.write('bal:'+str(cash), font=bal.style, align='center')
    score.write('Score:'+str(pts), font=score.style, align='center')
    xp.write(str(exp)+'/'+str(exp_goal), font=xp.style, align='center')
    enemy_pts.write('+'+str(green_pts), font=enemy_pts.style, align='center')
  #Enemy size
    square.shapesize(rnd_square,rnd_square)
    
  if exp >= exp_goal:
    lvl = lvl + 1

    lvlTxt.reset()
    lvlTxt.ht()
    lvlTxt.penup()
    lvlTxt.color('white')
    lvlTxt.goto(0,230)
    lvlTxt.style = ('Roboto', 15, 'normal')
    lvlTxt.write('lvl '+str(lvl), font=lvlTxt.style, align='center')

    #Arrow Animation2
    bitarrow.st()
    levelUp.st()

    exp -= exp_goal #easier to read than exp = 0 cause I know what i'm doing and not asking 'why is exp being set to 0?'
    xp.reset()
    xp.ht()
    xp.penup()
    xp.color('white')
    xp.goto(0,250)
    xp.style = ('Roboto', 10, 'normal')

    exp_goal = exp_goal + exp_goal
    xp.write(str(exp)+'/'+str(exp_goal), font=xp.style, align='center')
