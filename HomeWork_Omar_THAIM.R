# Ce doc est compose de l'ensembles des homework donnes depuis le  debut de la seance

# Homework1 va de la ligne de va de la ligne 5 a la ligne 225.
# Il faut que noter l'exercice se trouve en base de ce homework
# Homework2 demarre a la ligne 226 jusqu'au la fin.



#   Homework2 du 03/04/2023


## IMPORTATION DE DONNEES 

# au format xls
chemin="E:/ISEP2/Semestre_2/R/Cours_R_2023/Cours_04_Base.xls"  # on peut aussi / alieu de \\
Base=read.xls(chemin)
View(Base)

# au format txt
chemin="E:/ISEP2/Semestre_2/R/Cours_R_2023/Cours_04_Base.txt"  # on peut aussi / alieu de \\
Base=read.txt(chemin)
View(Base)

# au format csv
chemin="E:/ISEP2/Semestre_2/R/Cours_R_2023/Cours_04_Base.csv"  # on peut aussi / alieu de \\
Base=read_csv2(chemin)
View(Base)

# au format data
library(haven)
mm <- read_dta("mm.dta")
View(mm)

# au format dta
library(haven)
mm <- read_dta("mm.dta")
View(mm)

# au format sav
library(haven)
DR <- read_sav("E:/ISEP1/Logiciels Statatistiques ( SPSS,STATA)/SPSS/DONNEES_DEVOIR.sav")
View(DR)

## AVEC LA FONCTION read.table
# pour le format texte
donnees <- read.table("E:/ISEP2/Semestre_2/R/Cours_R_2023/Cours_04_Base.txt", header = TRUE)
View(donnees)
# SELECTION DE VARIABLES

Base$ Salaire  # exemple de la var "salaire" dans la base "Base"
Base$ Nom    # exemple de la var "Nom" dans la base "Base"

# FILTRAGE DE DONNEES
Base[Base$age < 25, ] # toutes les colonnes sont inclues
donnees[donnees$Work !=1, 3] # affichage de la colonne 3
donnees[donnees$Work !=1, c(1,2,3,5)] # affichage unique des colonnes du vecteur c

# AGGREGATIODE DONNEES
# aggreger la var "Work" par "Region"
aggregate(Base$Work, by = list(Base$Region), FUN = sum)

# FUSION DE DONNEES
# Création des ensembles de données
data1 <- data.frame(id = c(1, 2, 3), var1 = c("a", "b", "c"))
data2 <- data.frame(id = c(1, 3, 4), var2 = c(10, 20, 30))
data1
data2
# Fusion des ensembles de données
merged_data <- merge(data1, data2, by = "id")
merged_data
## example of using 'incomparables'
x <- data.frame(k1 = c(NA,NA,3,4,5), k2 = c(1,NA,NA,4,5), data = 1:5)
y <- data.frame(k1 = c(NA,2,NA,4,5), k2 = c(NA,NA,3,4,5), data = 1:5)
merge(x, y, by = c("k1","k2")) 
merge(x, y, by = "k1")
merge(x, y, by = "k2", incomparables = NA) # 2 rows


## STATISTIQUES DESCRIPTIVES
summary(Base)     # resume statistique de la base Base
summary(Base$Note)
median(Base$Note)
sd(Base$Note)

###  MANIPULATION DE DONNEES dplyr et tidyr

library("dplyr") 

# FILTRAGE DE LIGNES

library(dplyr)
filter(data, condition) # synthaxe
df<-filter(donnees,age>50)
df

df_F<-filter(donnees,Sexe=="F") # & sort(data$Nom)
df_F
filter(donnees,age<30)
# FILTRAGE MULTIPLE
filter(donnees,Sexe=="F")
filter(donnees,age<30)

# SELECTION DE COLONNES

library(dplyr)
select(Base,Nom)
select(Base,Nom,Mention)

# CREATION DE VARIABLES
mutate(data, new_variable = expression) # Synthaxe
mutate(Base,Nom_Region=paste(Base$Nom,Base$Mention))

# summarize

#La fonction group_by
library(dplyr)
nouveau_df <- df %>% group_by(Mention) %>% summarise(Total_Population = sum(Salaire))
nouveau_df

# renommer une var
rename(data, new_name1 = old_name1,new_name2 = old_name2,....) # Synthaxe
rename(Base,age,New_name)

# Créer l'histogramme
hist(Base$Note, breaks=10, main = "Histogramme des notes", xlab = "Valeurs", ylab = "Fréquence")

# Tracer l'histogramme avec 5 classes
hist(c(1, 2, 2, 3, 4, 4, 4, 5, 5), breaks = 5)

# Créer le diagramme en boîtes
boxplot(Base$Salaire, main = "Diagramme en boîtes des Salaire", ylab = "Salaire")

# Créer deux vecteurs de données
x <- c(1, 2, 3, 4, 5)
y <- c(2, 4, 6, 8, 10)
# Créer le nuage de points
plot(Base$Note, Base$Salaire, main = "Nuage de points des données", xlab = "X", ylab = "Y")

# Créer le graphique en barres
donnees <- c("A", "B", "C", "D", "E", "F")
frequences <- c(10, 20, 15, 5, 12, 8)
barplot(frequences, names.arg = donnees, main = "Graphique en barres des données", xlab = "Données", ylab = "frequences")

# oubien
x <- c(10, 15, 7, 12, 20)
labels <- c("A", "B", "C", "D", "E")
barplot(x, names.arg = labels, xlab = "Groupes", ylab = "Valeurs", main = "Diagramme à barres")

# Créer un vecteur de données
donnees <- c("A", "B", "C", "D", "E", "F")
proportions <- c(0.1, 0.2, 0.15, 0.05, 0.12, 0.08)

# Créer le graphique en secteurs
pie(Base$Note, labels = Base$Sexe, main = "Graphique en secteurs des données")


# Exercices 


# 1- Creer un fichier excel et renseigner les variables socio-démographiques du chef de ménage (age, sexe, situation matri, ocupation);
# 2- Importer votre base sur R; 
# 3- Afficher la base ; 
# 4- Décrivez les variables 
# 5-Manipulation de variable :
#   * Creer une variable classe_age 
# * Creer une sous-base ne contenant que les femmes; 
# * Faites une analyse croisées 

#  SOLUTION

# 1- Creer un fichier excel et renseigner les variables socio-démographiques du chef de ménage (age, sexe, situation matri, ocupation);
# c'est le fichier du nom de *Homework_Omar_THIAM_2023_04_04.xls*

# 2- Importer votre base sur R; 
library(readxl)
Base_Exo <- read_excel("Homework_Omar_THIAM_2023_04_04.xls")
View(Base_Exo)

# 3- Afficher la base

print(Base_Exo)

#resultat

# ID    Nom        Sexe      age      `Situation Matrimoniale`

# <dbl> <chr>      <chr>    <dbl>      <chr>       

# 1     Fatou       F        62         Marie                   
# 2     Coumba      F        15         Celibataire             
# 3     Gado        M        56         Veuf                    
# 4     Abass       M        18         Divorce                 
# 5     Khady       F        16         Marie                   
# 6     Sonko       M        27         Celibataire             
# 7     Fatima      F        65         Celibataire             
# 8     Malick      M        34         Divorce                 
# 9     Awa         F        49         Marie                   
# 10    Femme1      F        21         Celibataire             
# 11    Femme2      F        36         Veuf                    
# 12    Omar        M        63         Divorce                 
# 13    MTN         M        25         Marie                   
# 14    Femme3      F        48         Celibataire             
# 15    Zaongo      M        27         Divorce                 
# 16    Femme4      F        56         Divorce                 
# 17    Fatim       F        55         Marie                   
# 18    Aissatou    F        34         Celibataire             
# 19    Bassirou    M        49         Marie 


# 4- Décrivez les variables 

summary(Base_Exo) # toutes les informations sur les var de la base sonr resumees

## 5-Manipulation de variable :

#   * Creer une variable classe_age 

mutate(Base_Exo,if(Base_Exo[4, "age"]>min(Base$age))
{Classe_age="Enfant"} 
else 
{Classe_age="Adulte"})
# * Creer une sous-base ne contenant que les femmes
library(dplyr)
df<-filter(Base_Exo,Sexe=="F")
df
# * Faites une analyse croisées 
# aggreger la var "Work" par "Region"
moyenne_work_par_Sexe <- aggregate(Base_Exo$Work, by = list(Base_Exo$Sexe), FUN = sum)
moyenne_work_par_Sexe














 #  Homework numero_1


###3.1 (solution) À l'aide des fonctions rep, seq et c seulement, générer
#les séquences suivantes.
# a.	0 6 0 6 0 6
# b.	1 4 7 10
# c.	1 2 3 1 2 3 1 2 3 1 2 3
# d.	1 2 2 3 3 3
# e.	1 1 1 2 2 3
# f.	1 5.5 10
# g.	1 1 1 1 2 2 2 2 3 3 3 3


#Reponse
#a
rep(c(0, 6), 3)     
#b
seq(1, 10, by = 3)
#c
rep(1:3, 4)
#d
rep(1:3, 1:3)
#e
rep(1:3, 3:1)
#f
seq(1, 10, length = 3)
#g
rep(1:3, rep(4,3))


#Générer les suites de nombres suivantes à l'aide des fonctions :
#et rep seulement, donc sans utiliser la fonction seq.
# a.	1.1 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9 2
# b.	1 3 5 7 9 11 13 15 17 19
# c.	-2 -1 0 1 2 -2 -1 0 1 2
# d.	-2 -2 -1 -1 0 0 1 1 2 2
#e.	10 20 30 40 50 60 70 80 90 100

#Reponse
11:20 / 10
2 * 0:9 + 1
rep(-2:2, 2)
rep(-2:2, each = 2)
10 * 1:10

## 3.3 (solution) À l'aide de la commande apply, écrire des expressions R 
#qui remplaceraient les fonctions suivantes.

# a.	rowSums
# b.	colSums
# c.	rowMeans
# d.	colMeans

#Reponse
apply(x, 1, sum)  # 1-> ligne
apply(x, 2, sum) # 2_> colonne
apply(x, 1, mean) #1-> ligne
apply(x, 2, mean) #1-> colonne
x<-c(1,4,8,9,5,45,32,12,56,76,6,9)
length(x)
mat<-matrix(x,nrow=3,ncol=4)
mat


# Solution de l'exercice 3.4> 
cumprod(1:10)

#Solution de l'exercice 3.5
x == (x %% y) + y * (x %/% y)


#Solution de l'exercice 3.6
# Écrire une expression R permettant d'obtenir ou de calculer chacun des résultats 
#demandés ci-dessous.
x<-c(1,3,2,4,5,6,7,9,0,8,7,6,5,4,3,2,5,12,21,41)
length(x)
# Les cinq premiers éléments de l'échantillon.
head(x,5)
# La valeur maximale de l'échantillon.
max(x)
# La moyenne des cinq premiers éléments de l'échantillon.
mean(head(x,5))
# La moyenne des cinq derniers éléments de l'échantillon.
mean(tail(x,5))

#Solution de l'exercice 3.7
a.	(j - 1)*I + i
b.	((k - 1)*J + j - 1)*I + i

#Solution de l'exercice 3.8
a.	> rowSums(mat)
b.	> colMeans(mat)
c.	> max(mat[1:3, 1:3])
d.	> mat[rowMeans(mat) > 7,]

#Solution de l'exercice 3.9> 
temps[match(unique(cummin(tps)), temps)]







### EXPOSE SUR PASTEO ET PASTE


# Methode de concatenation sans aucun separateur 

# Concaténation de deux chaînes de caractères
prenom <- "Hafia"
nom <- "Diallo"
paste0(prenom, nom)  # output  "HafiaDiallo"

# Concaténation de deux vecteurs de chaînes de caractères
v1 <- c("a", "b", "c")
v2 <- c("x", "y", "z")
paste0(v1, v2)

# La fonction paste est une fonction de R qui permet de concaténer des chaînes de
# caractères en insérant un séparateur entre chaque chaîne. Le séparateur par défaut 
# est un espace (" "), mais il peut être spécifié grâce à l'argument sep

# Concaténation de deux chaînes de caractères avec space apr defaut
prenom <- "Omar"
nom <- "THIAM"
paste(prenom, nom,sep="$")  # output "Omar THIAM"


# Concaténation de deux vecteurs de chaînes de caractères
#https://github.com/thiamomar/Homework
















