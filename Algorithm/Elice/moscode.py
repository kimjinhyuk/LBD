dic_morse = {
        '*-**':'ㄱ','**-*':'ㄴ','-***':'ㄷ','***-':'ㄹ','--':'ㅁ','*--':'ㅂ',
        '--*':'ㅅ','-*-':'ㅇ','*--*':'ㅈ','-*-*':'ㅊ','-**-':'ㅋ','--**':'ㅌ',
        '---':'ㅍ','*---':'ㅎ','*':'ㅏ','**':'ㅑ','-':'ㅓ','***':'ㅕ',
        '*-':'ㅗ','-*':'ㅛ','****':'ㅜ','*-*':'ㅠ','-**':'ㅡ','**-':'ㅣ',
        '--*-':'ㅐ','-*--':'ㅔ','*****-':'ㅖ', '****-':'ㅒ'
    }

def mos(message):

    morse = message.split(' ')
    for i in morse: print(dic_morse[i], end=' ')

mos('-*- *** *-** **- **-* -** **-* -**- *- -*** - ***- --*- **-* -*** -**')