# Das ist mein kompletter Code zu dem Projekt.
# Die aktuellen Parameter sind für den letzten Teil meiner Simulation aber man kann alle Teile durch ändern der Parameter simulieren lassen.
# Falls sie noch fragen haben können sie mir diese einfach in der Schule stellen oder mir im Portal schreiben!


##########################################
## HINTERGRUND PROGRAMMIERUNG
##########################################

# wichtigen Pips integrieren
import random
import time
import pandas as pd

# Erstellen von eigenen Personen
class Person():
    def __init__(self):
        self.status = 0 # 0 = Gesund, 1 = Krank, 2 = Genesen/Tot, 3 = Geimpfte
        self.infectedDays = 0  # Tage die eine Person infiziert ist

    def reset(self):
        self.status = 0

    def infect(self):
        self.status = 1

    def remove(self):
        self.status = 2

    def impfen(self):
        self.status = 3

    def addInfectedDay(self):
        self.infectedDays += 1

    def getStatus(self):
        if self.status == 0:
            return "Gesund"
        if self.status == 1:
            return "Krank"
        if self.status == 2:
            return "Genesen/Tot"
        if self.status == 3:
            return "Geimpfte"

population = []
temp = []

def startSimulation(People, Days, Ansteckungsfaktor , Begegnungen, AussortiertAb , tägl_Impungen):
    for i in range(People):
        population.append(Person())

    for x in range(AussortiertAb):
        for i in range(People):
            population[i].reset()

        for y in range(15):
            population[y].infect()

        for x in range(0, Days):
            #if x < 4: -> Kann genutzt werden um ein Lockdown nach 5 Tagen zu starten
            runDay(Ansteckungsfaktor, People, Begegnungen, tägl_Impungen)
            #else:
            #    runDay(30, People, 2) -> Parameter für den Lockdown

        # 0-er dazwischen Stellen damit ich eine bessere übersicht über den Inhalt hab
        nd = {"Gesund": 0, "Krank": 0, "Entfernt": 0}
        temp.append(nd)
        temp.append(nd)

def runDay(Ansteckungsfaktor , pop, Begegnungen, Impfungen = 0):
    # Zurücksetzen von allen Parametern
    ges = 0
    krankP = []
    kra = 0
    kra2 = 0
    wachstum = 0
    geI = 0

    for i in range(pop):
        if population[i].getStatus() == "Krank":
            population[i].addInfectedDay()
            kra += 1
            krankP.append(i)

    if Impfungen != 0:
        geimpfte = 0
        gesun = 0
        while geimpfte < Impfungen:
            gesun = 0
            for i in range(pop):
                if population[i].getStatus() == "Gesund":
                    gesun += 1

            if gesun-(Impfungen-geimpfte) <= 0:
                geimpfte = 20
                for i in range(pop):
                    if population[i].getStatus() == "Gesund":
                        population[i].impfen()

            x = random.choice(population)
            if x.getStatus() == "Gesund":
                geimpfte += 1
                x.impfen()

    for i in range(pop):
        if population[i].getStatus() == "Geimpfte":
            geI += 1

    for i in range(pop):
        if population[i].getStatus() == "Gesund":
            ges += 1

    for i in range(kra):
        inf = random.randint(1, 5)
        if inf == 1 and population[krankP[i]].infectedDays > 5:
            population[krankP[i]].remove()

    for i in range(pop * Begegnungen):
        x = random.choice(population)
        y = random.choice(population)
        if x.getStatus() == "Krank" and y.getStatus() == "Gesund" or y.getStatus() == "Krank" and x.getStatus() == "Gesund":
            inf = random.randint(1, Ansteckungsfaktor)
            if inf == Ansteckungsfaktor:
                x.infect()
                y.infect()

    for i in range(pop):
        if population[i].getStatus() == "Krank":
            kra2 += 1

    wachstum = round(kra2/kra, 2)

    nd = {"Gesund": ges, "Krank": kra, "Entfernt": pop-kra-ges-geI, "Geimpfte": geI, "Wachstum": wachstum}
    temp.append(nd)

def printList():
    all = []
    for x in range(len(population)):
        print(population[x].getStatus())

    # Daten in eine Excle schreiben damit ich damit leichter Graphen machen kann
    nd = pd.DataFrame(temp)
    convertExcle = pd.ExcelWriter("output.xlsx", engine='xlsxwriter')
    nd.to_excel(convertExcle, sheet_name='output')

    convertExcle.save()

##########################################
## STARTEN DER SIMULATION
##########################################

startSimulation(People=1000, Days=25, Ansteckungsfaktor=20, Begegnungen=5, AussortiertAb=5, tägl_Impungen=5)  # People, Days, R0, Begegnungen, Durchläufe (bis man aussortiert wird), Impfungen
printList()
