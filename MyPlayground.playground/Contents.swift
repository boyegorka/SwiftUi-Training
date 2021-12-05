var adress = ["Nick":"NewYork","Mark":"Germany", "Ann":"Russia"]
print(adress["Nick"])
adress.updateValue("German", forKey: "Mark2")
print(adress.count)
print(adress)

adress.removeValue(forKey: "German")
print(adress)
