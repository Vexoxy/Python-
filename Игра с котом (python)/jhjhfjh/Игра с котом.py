cat = input("Сколько раз вы погладите кота")
sum=0

for a in range(1, int(cat)): #тут я считаю сколько будет сумма от 1 до N
        sum=sum + 1

print(sum)
if sum>20: # это условие для того, чтоб узнать его действие
    print('Кот стал слишком пушистым и он раздавил тебя')
if sum<3: # это условие для того, чтоб узнать его действие
    print('Кот укусил тебя и ты стал человеком котом')
else: # это условие для того, чтоб узнать его действие
    print('Кот доволен')
