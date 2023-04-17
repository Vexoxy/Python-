import pygame


pygame.init()
win = pygame.display.set_mode((600,600))

pygame.display.set_caption("Игра на триста")

x = 100
y = 50
x1 = 200
y1 = 100
w = 70
h = 45
speed = 5
speed2 = 5
speed3 = 5
speed4 = 5

bg = pygame.image.load('image/bg.png')
duck = pygame.image.load('duck/duck.png')
cat4 = pygame.image.load('duck/cat4.png')
cat3 = pygame.image.load('duck/cat3.png')
cat2 = pygame.image.load('duck/cat2.png')
cat1 = pygame.image.load('duck/cat1.png')
cat =[
    pygame.image.load('duck/cat.png.'),
    pygame.image.load('duck/cat4.png'),
    pygame.image.load('duck/cat3.png'),
    pygame.image.load('duck/cat2.png'),
    pygame.image.load('duck/cat1.png')
]
def drawWindow():
    win.blit(bg, (0,0))
    win.blit(cat[0], (x, y, w, h))
    win.blit(duck, (x1,y1,w, h ))
    pygame.display.update()

run = True
while run:
    pygame.time.delay(100)

    for event in pygame.event.get():
        if event.type == pygame.QUIT:
            run = False

    keys = pygame.key.get_pressed()
    if keys[pygame.K_DOWN] and y<600-h:
        y += speed
    keys = pygame.key.get_pressed()
    if keys[pygame.K_UP] and y>0:
        y -= speed4
        keys = pygame.key.get_pressed()
    if keys[pygame.K_RIGHT] and x>0:
        x += speed2
        keys = pygame.key.get_pressed()
    if keys[pygame.K_LEFT] and x<600-w:
        x -= speed3
    keys = pygame.key.get_pressed()
    if keys[pygame.K_s] and y1<600-h:
        y1 += speed
    keys = pygame.key.get_pressed()
    if keys[pygame.K_w] and y1>0:
        y1 -= speed4
        keys = pygame.key.get_pressed()
    if keys[pygame.K_d] and x1>0:
        x1 += speed2
        keys = pygame.key.get_pressed()
    if keys[pygame.K_a] and x1<600- w:
        x1 -= speed3

    drawWindow()

pygame.quit()
