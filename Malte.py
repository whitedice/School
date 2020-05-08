import sys
class Searcher():
    def search(self, lang, results):
        count = 0
        try :
            from googlesearch import search
        except ImportError:
            print("Du musst noch das Google Modul in deinen Pips installieren!")
            print("Deine Python-Version:" + sys.version)
            print("Modulname: google")
            print("Instalationcmd (WINDOWS): python -m pip install google")

        for i in search(query=self.name, tld='co.in',lang=lang,num=10,stop=results, pause=2):
            count += 1
            print (str(count) + ". Ergebnis:")
            print(i + '\n')

    def change(self,name_search):
        self.name = name_search

if __name__=='__main__':
    detective = Searcher() # Hier initiierst du deine Suchmaschiene
    detective.change("Pommes") # Hier sagst du nach was du suchen willst
    detective.search('en', 5) # Hier suchst du es dann letzendlich... en steht für die Sprache/Region wo du es suchst | die 5 sagt dass du 5 Ergebnisse willst
