
#           HOMEWORK
##############################################################################
##############################################################################
##############################################################################
#   R Introduction

################################################################################
# R mise en route
# Vous pouvez exécuter des programmes R de deux manières différentes :
 
# -Installation de R sur votre ordinateur local
# -Utilisation d’un environnement en ligne

1.#  # Installer R sur votre ordinateur local
#  https://cloud.r-project.org/
#   Comment installer RStudio?
# Visitez https://www.rstudio.com/products/rstudio/download/#download 
# pour télécharger la version gratuite de RStudio pour n’importe quelle plate-forme
# que vous voulez.
 v#  #compilateurs  en ligne de R  
2.# Les compilateurs R en ligne les plus couramment utilisés sont :
# Visitez:
# JDoodle en ligne R Editor
# Paiza.io compilateur R en ligne
# Compilateur IdeaOne R

##############################################################################
#     R Commentaires

# Les commentaires sont des parties d’un programme informatique qui sont utilisées pour
# décrire un morceau de code. Par exemple
# declare variable
age = 24
# print variable
print(age)

# -commentaire d'une seule ligne
# -R Commentaires multi-lignes

##############################################################################
#          R Variables et constantes
# Variables
##Constantes
# Dans R, nous avons les types de constantes suivants.

# Les cinq types de constantes R - numeric,integer,complex,logical,string

# En plus de ceux-ci, il existe 4 types spécifiques de constantes R :

NULL # un objet R vide
# Par exemple
x <- NULL
print(x)  # NULL
print(typeof(x))

NA  #-représente une valeur qui n’est pas disponible. Par exemple
# Par exemple
print(NA + 20)

Inf # trop petit ou trop grand
NaN  # (Pas un nombre) - représente une valeur numérique non définie.
# Par exemple
print(0/0)      # NaN
print(Inf/Inf)  # NaN

# result is too big so it represents positive infinity
a <- 2^2020
print(a)   # Inf
# result is too big
# represents negative infinity
b <- -2^2020
print(b)    # -Inf

NA 
print(NA + 20) # NA

##############################################################################
#    Constantes R intégrées

# La programmation R fournit des constantes prédéfinies qui peuvent être directement 
# utilisées dans notre programme. Par exemple
# print list of uppercase letters
print(LETTERS)
# print list of lowercase letters
print(letters)
# print 3 letters abbreviation of English months
print(month.abb)
# print numerical value of constant pi
print(pi)

# Dans l’exemple ci-dessus, nous avons utilisé les constantes intégrées suivantes :
LETTERS     #- pour afficher une liste de toutes les lettres majuscules
letters     #- d’afficher une liste de toutes les lettres minuscules
month.abb   #- pour imprimer les abréviations de 3 lettres de tous les mois anglais
pi          #- pour imprimer la valeur numérique de la constante pi


##############################################################################
  #Types de données R

#Nous pouvons le vérifier en imprimant la classe de .x
x <- 123L
# print value of x
print(x)
# print type of x
print(typeof(x))
print(class(x))

# Différents types de données
# Dans R, il existe 6 types de données de base :
logical
numeric
integer
complex
character
raw

# Il existe de nombreux types d'objets R. Les plus fréquemment utilisés sont:
Vectors
Lists
Matrices
Arrays
Factors
Cadres de données

###########################################################################
#          Sortie d’impression R
# 3 fonctions peuvent etre utilises: print(),paste(),cat(),printf()

 # Print

# print values
print("R is fun")
# print variables
x <- "Welcome to Programiz"
print(x)

  #Paste

company <- "Programiz"
# print string and variable together
print(paste("Welcome to", company))

myString <- "Welcome to Programiz"
# print formatted string
srintf("String: %s", myString)

# sprintf() with integer variable
myInteger <- 123
sprintf("Integer Value: %d", myInteger)
# sprintf() with float variable
myFloat <- 12.34
sprintf("Float Value: %f", myFloat)

# Type	Lettre
    # int	%d / %i
# long	%ld / %li
# short	%hd / %hi
    # float/double	%f
    # char	%c
    # string (char*)	%s
# pointeur (void*)	%p
# entier hexadécimal	%x / %X
# entier octal	%o
# entier non signé	%u
    # caractère %	%%

#######################################################################################
#                     R NOMBRES


#Les nombres en R peuvent être divisés en 3 catégories différentes:
#Numeric
#Integer
#Complex

#Numeric Data Type

# decimal variable
my_decimal <- 123.45
print(typeof(my_decimal))
print(class(my_decimal))
# variable without decimal
my_number <- 34
print(class(my_number))

#Integer Data Type

my_integer <- 123L
# print the value of my_integer
print(my_integer) 

# print the data type of my_integer
print(class(my_integer))

# Complex Data Type

# variable with only imaginary part
z1 <- 5i
print(z1)
print(class(z1))

# variable with both real and imaginary parts
z2 <- 3 + 3i
print(z2)
print(class(z2))




##############################################################################
##############################################################################
       #R Flow Control cad Contrôle de débit R
##############################################################################

### R boolean Expression

# Dans R, les variables booléennes ne peuvent prendre que 2 valeurs : et .
# Par exemple TRUE FALSE

# declare boolean 
x <- TRUE
print(x)
print(class(x))

# declare boolean using single character
y <- F
print(y)
print(class(y))

#R Booléen avec opérateurs de comparaison
#Les opérateurs de comparaison sont utilisés pour comparer deux valeurs.
#<,>,<=,>=, == , !=

#R Booléen avec opérateurs logiques
# ET l’opérateur (&)
# OU opérateur (|)
# PAS opérateur (!)

##############################################################################
#      R if...else

# R if Statement
# The syntax of an if statement is:
# Case 1
if (test_expression) {
  # body of if
}
# Par exemple
x <- 3
if (x > 0) {
  print("The number is positive")
}
print("Outside if statement")

# R if...else Statement
# We can also use an optional else statement with an if statement. The syntax of an if...else statement is:

# Case 2
if (test_expression) {
  # instructions
} else {
  #   # instructions
}

# Par exemple
age <- 15
if (age > 18) {
  print("You are eligible to vote.")
} else {
  print("You can not vote.")
}
# R if...else if...else Statement
# If you want to test more than one condition, you can use the optional else if statement along with your if...else statements. 
# The syntax is:

# Case 3
if(test_expression1) {
  # code block 1
} else if (test_expression2){
  # code block 2
} else {
  # code block 3
}

# Nested if...else Statements in R cad Si implique

x <- 20
if (x > 0) {
  if (x %% 2 == 0) {
    print("x is a positive even number")
  } else {
    print("x is a positive odd number")
  }
  
  # execute if x is not positive
} else {
  
  if (x %% 2 == 0) {
    print("x is a negative even number")
  } else {
    print("x is a negative odd number")
  }
}
############################### ###############################

## R ifelse() Function

# La syntaxe de la fonction est la suivante : ifelse()
ifelse(test_expression, si_Vrai, Si_fAUX)

x <- c(12, 9, 23, 14, 20, 1, 5)
# ifelse() function to determine odd/even numbers
ifelse(x %% 2 == 0, "EVEN", "ODD")

############################### #####################################
## R while Loop

# In R, there are three types of loops:

# while loops
# for loops
# repeat loops

# R while Loop

# while loops are used when you don't know the exact number of times 
#a block of code is to be repeated. 
#The basic syntax of while loop in R is:

While (test_expression) {
  # block of code
}

# Exemple1
number = 1
sum = 0
while (number <= 10) {
  sum = sum + number
      number = number + 1
}
print(sum)

# Example 2: while Loop With break Statement
number = 1
while(number <= 10) {
  print(number)
  number = number + 1 
    
  # break if number is 6
  if (number==6) {
    break
  }  
}

# Example 3: while Loop With next Statement

# You can use the next statement in a while loop to skip an iteration 
# even if the test condition is TRUE. 
# For example:  
number = 1
while(number <= 10) {
  # skip=passer iteration if number is even=pair
  if (number %% 2 == 0) {  
    number = number + 1
    next
  }
  print(number)
  number = number + 1  
}

## R for Loop
#Synthaxe
for (value in sequence) {
  # block of code
}
# Here, sequence is an object of elements and value takes in each of those elements. In each iteration, the block of code is executed. For example,

numbers = c(1, 2, 3, 4, 5)
# For example
# for loop to print all elements in numbers
for (x in numbers) {
  print(x)
}

# Example 2: for Loop With break Statement
# You can use the break statement to exit from the for loop in any iteration. 
# For example
numbers = c(2, 3, 12, 14, 5, 19, 23, 64)
# for loop with break
for (i in numbers) {
  # break the loop if number is 5
  if( i == 5) {
    break
  }
  print(i)
}

# Example 3: for Loop With next Statement

# Instead of terminating the loop, you can skip an iteration using the next statement.
# For example
numbers = c(2, 3, 12, 14, 5, 19, 23, 64)
# for loop with next
for (i in numbers) {
  # use next to skip odd numbers
  if( i %% 2 != 0) {
    next
  }
  print(i)
}


## R pause et suivant

# The syntax of the break statement is:

if (test_expression) {
  break
}

# vector to be iterated over
x = c(1, 2, 3, 4, 5, 6, 7)
# for loop with break statement
for(i in x) {
        # if condition with break
    if(i == 4) {
        break
    }
        print(i)
}

#break, instruction dans une boucle imbriquée
# vector to be iterated over
x = c(1, 2, 3)
y = c(1, 2, 3)
# nested for loop with break statement
for(i in x) {
    for (j in y) {
        if (i == 2 & j == 2) {
            break
        }
        print(paste(i, j))
    }
}

# R suivant Déclaration
# Synthaxe
if (test_condition) {
  next
}

###############################################################################
# repeat loop

#The syntax of repeat loop is:
  
  repeat {
    # statements
    if(stop_condition) {
      break
    }
  }
# For example
x = 1
repeat {
    print(x)
    # Break statement to terminate if x > 4
    if (x > 5) {
        break
    } 
    # Increment x by 1
    x = x + 1
}

# Exemple 3 : répéter la boucle avec l’instruction suivante
# Vous pouvez également utiliser une instruction à l’intérieur d’une boucle pour ignorer une itération.
#Par exemplenextrepeat

x = 1
repeat {
        # Break if x = 4
    if ( x == 4) {
        break
    } 
        # Skip if x == 2
    if ( x == 2 ) {
        # Increment x by 1 and skip
        x = x + 1
        next
    }
    # Print x and increment x by 1
    print(x)
    x = x + 1
}

#####################################################################################

#### R Functions

#The syntax is:
 
func_name <- function (parameters) {
    statement
}
# define a function to compute power
power <- function(a, b) {
  print(paste(a,"raised to the power", b ,"is: ", a^b))
}

# call the power function with arguments
power(2, 3)

# Valeurs des paramètres par défaut

# define a function to compute power
power <- function(a = 2, b) {
  print(paste(a,"raised to the power", b ,"is: ", a^b))
}

# call the power function with arguments
power(2, 3)

# call function with default arguments
power(b=3)

# Valeurs renvoyées

# Vous pouvez utiliser le mot-clé pour renvoyer des valeurs à partir d’une fonction. 
# Par exemple return()
# define a function to compute power
power <- function(a, b) {
    return (a^b)
}

# call the power function with arguments
print(power(2, 3))

# Fonction imbriquée

# Dans R, vous pouvez créer une fonction imbriquée de 2 manières différentes.
# En appelant une fonction à l’intérieur d’un autre appel de fonction.
# En écrivant une fonction à l’intérieur d’une autre fonction.

# Exemple 1 : Appel d’une fonction à l’intérieur d’un autre appel de fonction
# Considérez l’exemple ci-dessous pour créer une fonction permettant d’ajouter deux nombres.

# define a function to compute addition
add <- function(a, b) {
    return (a + b)
}
# nested call of the add function 
print(add(add(1, 2), add(3, 4)))


# Exemple 2 : Écrire une fonction dans une autre fonction
# Créons une fonction imbriquée en écrivant une fonction dans une autre fonction.

# define a function to compute power
power <- function(a) {
    exponent <- function(b) {
        return (a^b)
    }
    return (exponent)
}
# call nested function 
result <- power(2)
print(result(3))

################################################################################
################################################################################
################################################################################
     # R Data Structure
################################################################################
 ### R String


# String Operations in R:
# Find the length of a string
# Join two strings
# Compare two strings
# Change the string case

1. # Find Length of R String: the number of caracter  in the caracter
  message1 <- "Programiz"
  nchar(message1) # 9
  
2. # Join Strings Together
  message1 <- "Programiz"
  message2 <- "Pro"
  paste(message1, message2) 
  # Oubien
  cat(message1, message2)

3. # Compare Two Strings in R Programming
  message1 <- "Hello, World!"
  message2 <- "Hola, Mundo!"
  message3 <- "Hello, World!"
  print(message1 == message2)  # compare message1 and message2 
  print(message1 == message3)  # compare message1 and message3 
  
4. # Change Case of R String
  # In R, we can change the case of a string using
  toupper() #- convert string to uppercase = majuscule
  tolower() #- convert string to lowercase = minuscule
  
  # For example

  # Convertir une chaîne de caractères en majuscules
  phrase <- "Bonjour, je suis une phrase en minuscules."
  phrase_maj <- toupper(phrase)
  print(phrase_maj)
  # Convertir une chaîne de caractères en minuscules
  phrase_maj <- "BONJOUR, JE SUIS UNE PHRASE EN MAJUSCULES."
  phrase_min <- tolower(phrase_maj)
  print(phrase_min)

############################################################################## 
  # R Vectors
  
1.# Acess elements
  # a vector of string type
  languages <- c("Swift", "Java", "R")
  # access first element of languages
  print(languages[1])  # "Swift"
  # access third element of languages
  print(languages[3]) # "R"

2.# Modifier l’élément vectoriel
  # Pour modifier un élément vectoriel, nous pouvons simplement réaffecter
  # une nouvelle valeur à l’index spécifique.
  # For example
  languages <- c("Swift", "Java", "R")
  languages[3]<-"Wolof"
  print(languages)

3.# Length of Vector in R 
length(languages) # Longueur du vecteur 'languages'

############################################################################## 
  # R Matrix
# the syntax is
  matrix(data, nrow, ncol, byrow = FALSE, dimnames = NULL)
  # avec length=nrow*ncol et dinmanes est une liste pour specifier les lignes et les colonnes
  
  mdat <- matrix(c(1,2,3, 11,12,13), nrow = 3, ncol = 2) 
  mdat
  mat<-matrix(1:6, nrow = 2, ncol = 3, byrow = T, dimnames = list(c("Gauche", "Droit"),
                                                    c("Rouge", "Vert", "Bleu")))
  mat

1.# Access Matrix Elements in R
 mat[1,2] # row 1 and colomn 2

2.# Access Entire Row or Column
  mat[n, ] # - returns the entire element of the nth row.
  mat[ ,n] # - returns the entire element of the nth column.
  mat[2,] # acces 2 row
  mat[,1] # acces 1 colomn
  
3.# Access More Than One Row or Column
  # syntax
  # mat[c(n1,n2), ] - returns the entire element of n1 and n2 row.
  # mat[ ,c(n1,n2)] - returns the entire element of n1 and n2 column.
  # # For example
  mdat <- matrix(c(1,2,3, 11,12,13), nrow = 3, ncol = 2) 
  mat<-matrix(1:6, nrow = 2, ncol = 3, byrow = T, dimnames = list(c("Gauche", "Droit"),c("Rouge", "Vert", "Bleu")))
  mat

  mat[c(1,2),] # extract rows 1 and 2
  mat[,c(2,3)] # extract colomns 1 and 2
  
4.# Modify Matrix Element in R
  # we do a new affectation
  mat[1,2] = 140   
  mat

5.# Combine Two Matrices in R
  # In R, we use the cbind() and the rbind() function to combine two matrices together.
  cbind()   # combines two matrices by columns
  rbind()   # combines two matrices by rows
  
# NB The number of rows and columns of two matrices we want to combine must be equal.
  
  # For example:
  # create two 2 by 2 matrices 
  even_numbers <- matrix(c(2, 4, 6, 8), nrow = 2, ncol = 2)
  odd_numbers <- matrix(c(1, 3, 5, 7), nrow = 2, ncol = 2)
  even_numbers
  odd_numbers
  cbind(even_numbers, odd_numbers) # combine two matrices by column
  rbind(even_numbers, odd_numbers) # combine two matrices by row
   
6.# Check if Element Exists in R Matrix
  # In R, we use the %in% operator to check if the specified element is present in the matrix or not and returns a boolean value.
  # For example:
  mat<-matrix(1:6, nrow = 2, ncol = 3, byrow = T, dimnames = list(c("Gauche", "Droit"),c("Rouge", "Vert", "Bleu")))
  
  "Larry" %in% mat 
  3 %in% mat 
 
############################################################################## 
  # R Lists 
  
# A List is a collection of similar or different types of data.
# Some examples of lists  
  list1 <- list(24, 29, 32, 34)
  list1
  list2 <- list("Ranjy", 38, TRUE)  
  list2
  ma_liste <- list(nombres = c(1, 2, 3), caracteres = c("a", "b", "c"), matrice = matrix(1:6, nrow=2))
  ma_liste

1.# Access List Elements in R
  ma_liste <- list(nombres = c(1, 2, 3), caracteres = c("a", "b", "c"), matrice = matrix(1:6, nrow=2))
  ma_liste[1] # output nombres = c(1, 2, 3)
  ma_liste[[1]] # output 1, 2, 3

2.# Modify a List Element in R
  list1 <- list(24, "Sabby", 5.4, "Nepal")
  list1[2] <- "Aissatou"
  list1

3.# Add Items to R List
  # We use the append() function to add an item at the end of the list.
  # For example:
   # UN element a une liste
  list1 <- list(24, "Omar", 5.4, "MTN")
  append(list1, 3.14)
   # Un vecteur a une liste
  ma_liste_new<-append(ma_liste,c("A","B","C"))
  ma_liste_new
    #Une liste  a une liste
  ma_liste <- list(nombres = c(1, 2, 3), caracteres = c("a", "b", "c"), matrice = matrix(1:6, nrow=2))
  ma_liste_new<-append(ma_liste,list(Note=c("A","B","C")))
  ma_liste_new
  
4.# Remove = delete Items From a List in R ou supression
  # R allows us to remove items for a list. We first access elements using a list index and add negative sign
#- to indicate we want to delete the item. For example,
  list1
  list1_remove<-list1[c-1,] #- removes 1st item
  list1_remove<-list1[c(-1,-2)] #- removes 1st and 2nd item
  list1_remove
  ma_liste_remove<-ma_liste[-1]
  ma_liste_remove
  
5.# Length of R List
  length(list1)
  length(ma_liste)
  
6.# Loop Over a List cad Parcourir une liste
  # In R, we can also loop through each element of the list using the for loop.
  # For example:
  items <- list(24, "Sabby", 5.4, "Nepal")
  for (item in items) {
      print(item)
  }

7.# Check if Element Exists in R List
  list1 <- list(24, "Sabby", 5.4, "Nepal")
  "Sabby" %in% list1 # TRUE
  "Kinsley" %in% list1 # FALSE 
  
################################################################################
### R Arrays
  
  # The only difference between vectors, matrices, and arrays are
  # Vectors are uni-dimensional arrays
  # Matrices are two-dimensional arrays
  # Arrays can have more than two dimensions

1.#   Create an Array in R
  # The syntax of the array() function is:
   array(vector, dim = c(nrow, ncol, nmat)) # or nmat is the number of matrix from array
  # For example:
  # create 2 matrix which 2 rows and 3 columns
  array1 <- array(c(1:12), dim = c(2,3,2))
  print(array1)
  
2.# Access Array Elements
  #the syntax is:
   array[n1, n2, mat_level] # mat_level is the number of matrix
  #For example:
   array1 <- array(c(1:12), dim = c(2,3,2))
  # access element at 1st row, 3rd column of 2nd matrix
   array1[1, 3, 2]

3.# Access Entire Row or Column
  # The syntax is
  aray1[c(n), ,mat_level]    # returns the entire element of the nth row.
  array1[ ,c(n), mat_level]   # returns the entire element of the nth column.
  #For example:
  array1 <- array(c(1:12), dim = c(2,3,2))
  print(array1)
  # 
  # array1[,c(2),1] # For the 1st matrix,retire the 2nd colomn
  # array1[c(1), ,2]) # For the 2nd matrix,retire the 1st row
  # 
4.# Check if Element Exists
  array1 <- array(c(1:12), dim = c(2,3,2))
  print(array1)
  11 %in% array1
  c(13,1,3,4) %in% array1
  
5.# Length of Array in R
  array1 <- array(c(1:12), dim = c(2,3,2))
  print(array1)
  # length(array1)) # find total elements in array1

################################################################################
### R Data Frame

1.# Create a Data Frame in R
  # the syntax is:
  dataframe1 <- data.frame(first_col  = c(val1, val2, ...),second_col = c(val1, val2, ...), ...)
  # Examples of data frame
  data1 <- data.frame(id = c(1, 2, 3), var1 = c("a", "b", "c"))
  data1
  
  dataframe1 <- data.frame (Name = c("Juan", "Alcaraz", "Simantha"),Age = c(22, 15, 19),
                                Vote = c(TRUE, FALSE, TRUE))
  print(dataframe1)

2.# Access Data Frame Columns
  # There are different ways to extract columns from a data frame.
  # We can use [ ], [[ ]], or $ to access specific column of a data frame in R. 
  # For example:
    print(dataframe1) 
  # pass index number inside [ ] 
    print(dataframe1[1])
  # pass column name inside [[  ]] 
    print(dataframe1[["Name"]])
  # use $ operator and column name 
    print(dataframe1$Name)
3.# Combine Data Frames
  #In R, we use the rbind() and the cbind() function to combine two data frames together.
    rbind() # combines two data frames vertically
    cbind() # combines two data frames horizontally
  
  # NB  Combine Vertically Using rbind()
  # If we want to combine two data frames vertically, the column name of the 
  # two data frames must be the same. 
  
  # For example:
  
    dataframe1 <- data.frame (Name = c("Juan", "Alcaraz"),Age = c(22, 15))
    dataframe2 <- data.frame (Name = c("Yiruma", "Bach"),Age = c(46, 89))
    dataframe3 <- data.frame (Hobby = c("Tennis", "Piano"))
  
  # combine two data frames vertically 
    updated_vertically <- rbind(dataframe1, dataframe2)
    print(updated_vertically) 
    
  # combine two data frames horizontally 
    updated_horizontally <- cbind(dataframe1, dataframe3)
    print(updated_horizontally)
4.# Length of a Data Frame in R
  length(dataframe1) # Find the number of colu mns for dataframe1
  length(dataframe3)
  length(updated_horizontally)

################################################################################
### R Factors
# A Factor is a data structure that is used to work with categorizable datas.  
factor1<-factor(c("Homme","Femme"),levels = c(1,2))
factor1
1.# Create a Factor in R
  #The syntax for creating a factor is: 
  factor(vector)
  #For example
  # create a factor
  sexe <- factor(c("male", "female", "male", "transgender", "female"))
  # print the marital_status factor
  print(sexe)
2.# Access Factors Elements
  print(sexe)
  # access 1st element of students_gender
  print(sexe[1])
  # access 4th element of students_gender
  print(sexe[4])
3.# Modify Factor Element
  marital_status <- factor(c("married", "single", "single", "divorced", "married"))
  print(marital_status)
  # print the marital_status factor
  marital_status[1] <- "divorced"
  print(marital_status[1])
4.# the length of a factor in R?
  length(marital_status)
5.# How to loop over a factor in R?
  for (status in marital_status) {
      print(status)
  }

################################################################################
################################################################################
################################################################################
  #  R Data Visualization

################################################################################
  # R Bar plot
# general syntax
barplot(height,                  # Un vecteur numérique contenant les hauteurs de chaque barre
        width = NULL,           # La largeur des barres (par défaut, automatique)
        space = NULL,           # L'espace entre les barres (par défaut, automatique)
        names.arg = NULL,       # Un vecteur contenant les noms de chaque barre
        legend.text = NULL,     # Le texte de la légende
        args.legend = NULL,     # Les arguments de la légende
        horiz = FALSE,          # Un booléen indiquant si le graphique doit être horizontal
        density = NULL,         # La densité de remplissage des barres
        angle = NULL,           # L'angle de rotation des hachures
        col = NULL,             # La couleur de remplissage des barres
        border = par("fg"),     # La couleur de bordure des barres
        main = NULL,            # Le titre principal du graphique
        sub = NULL,             # Le sous-titre du graphique
        xlab = NULL,            # Le label de l'axe des x
        ylab = NULL,            # Le label de l'axe des y
        xlim = NULL,            # Les limites de l'axe des x
        ylim = NULL,            # Les limites de l'axe des y
        log = "",               # Un caractère indiquant si l'axe doit être logarithmique
        axes = TRUE,            # Un booléen indiquant si les axes doivent être dessinés
        axisnames = TRUE,       # Un booléen indiquant si les noms d'axe doivent être dessinés
        cex.axis = NULL,        # La taille des labels d'axe
        cex.names = NULL,       # La taille des noms de barre
        inside = TRUE,          # Un booléen indiquant si les étiquettes de barre doivent être dessinées à l'intérieur des barres
        plot = TRUE,            # Un booléen indiquant si le graphique doit être dessiné
        axis.lty = 0,           # Le type de ligne de l'axe
        offset = 0.5,           # L'offset des barres
        add = FALSE,            # Un booléen indiquant si les barres doivent être ajoutées à un graphique existant
        args.rectangle = NULL)  # Les arguments pour le rectangle autour du graphique

1.# simple barplot with labels and title only
  x <- c(10, 15, 7, 12, 20) # frequences des var categorielles
  labels <- c("A", "B", "C", "D", "E") # donnees en abscise qui st les var categorielles
  barplot(x, names.arg = labels, xlab = "Groupes", ylab = "Valeurs", main = "Diagramme à barres")
2.# Colour,densite et position
  temperatures <- c(22, 27, 26, 24, 23, 26, 28)
  days<-c("Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat")
  result <- barplot(temperatures, 
    main = "Maximum Temperatures in a Week", 
    names.arg=days,
    xlab = "Degree Celsius",
    ylab = "Day",
    col = "blue", # Change Bar Color in R
    density = 10, # Bar Texture in R
    horiz = TRUE #Make Bar Plot Horizontal in R
  )

3.# Stacked Bar Plot in R cad Diagramme à barres empilées en R
  # create a matrix
  titanic_data <-  matrix(c(122, 203, 167, 118, 528, 178, 673, 212),
  nrow = 2, ncol = 4)
  titanic_data 
  result <- barplot(titanic_data,
  main = "Survival of Each Class",
  xlab = "Class",
  names.arg = c("1st", "2nd", "3rd", "Crew"),
  col = c("red","green")
  )
  
  legend("topleft",
  c("Not survived","Survived"),
  fill = c("red","green")
  )

################################################################################
  # R histogram

hist(Base$Note, breaks=10, main = "Histogramme des notes", xlab = "Valeurs", ylab = "Fréquence")

# Tracer l'histogramme avec 5 classes
hist(c(1, 2, 2, 3, 4, 4, 4, 5, 5), breaks = 7)
# The syntax is 
hist(x,              # vecteur numérique contenant les données à utiliser pour construire l'histogramme
     breaks = NULL,  # spécifie les intervalles de classe utilisés pour construire l'histogramme
     freq = TRUE,    # si TRUE, l'histogramme affiche le nombre d'observations dans chaque classe
                     # si FALSE, l'histogramme affiche la densité de probabilité
     density = NULL, # si TRUE, l'histogramme affiche la densité de probabilité estimée plutôt que le nombre d'observations
                     # si ce paramètre est omis, il est déterminé automatiquement en fonction des autres paramètres de l'histogramme
     angle = 45,     # angle de remplissage des barres
     col = NULL,     # couleur à utiliser pour remplir les barres de l'histogramme
     border = NULL,  # couleur de la bordure des barres de l'histogramme
     xlim = NULL,    # limites de l'axe x de l'histogramme
     ylim = NULL,    # limites de l'axe y de l'histogramme
     xlab = NULL,    # étiquette de l'axe x de l'histogramme
     ylab = NULL,    # étiquette de l'axe y de l'histogramme
     main = NULL,    # titre principal de l'histogramme
     sub = NULL,     # sous-titre de l'histogramme
     axes = TRUE,    # si TRUE, les axes sont dessinés
     plot = TRUE,    # si TRUE, l'histogramme est tracé
     labels = FALSE, # si TRUE, les étiquettes des classes sont dessinées
     nclass = NULL,  # nombre de classes à utiliser
     warn.unused = TRUE, # si TRUE, émet un avertissement si certains arguments ne sont pas utilisés
     ...)            # autres paramètres graphiques

# For example
temperatures <- c(67 ,72 ,74 ,62 ,76 ,66 ,65 ,59 ,61 ,69 )
# histogram of temperatures vector
result <- hist(temperatures,
  main = "Histogram of Temperature",
  xlab = "Temperature in degrees Fahrenheit",
  col = c("red","green","yellow","blue","black"),
  xlim = c(50,100),
  ylim = c(0, 5))

print(result)

################################################################################
  # R Pie Chart
# Syntax
pie(x,               # vecteur numérique ou matrice contenant les données à utiliser pour construire le graphique en secteurs
    labels = NULL,   # étiquettes à afficher pour chaque secteur
    clockwise = FALSE, # si TRUE, les secteurs sont dessinés dans le sens des aiguilles d'une montre
    density = NULL,  # densité de remplissage des secteurs (si le remplissage est solide)
    angle = 45,      # angle de remplissage des secteurs (si le remplissage est en motif)
    col = NULL,      # couleurs à utiliser pour remplir les secteurs
    border = NULL,   # couleurs des bordures des secteurs
    main = NULL,     # titre principal du graphique en secteurs
    ...              # autres paramètres graphiques
)
# For example
1.
expenditure <- c(600, 300, 150, 100, 200)
result <- pie(expenditure,
  main = "Monthly Expenditure Breakdown",
  labels = c("Housing", "Food", "Cloths", "Entertainment", "Other"),
  col = c("red", "orange", "yellow", "blue", "green")
)
print(result)

2. # pie3D
# import plotrix to use pie3D()
library(plotrix)

expenditure <- c(600, 300, 150, 100, 200)
result <- pie3D(expenditure,
  main = "Monthly Expenditure Breakdown",
  labels = c("Housing", "Food", "Cloths", "Entertainment", "Other"),
  col = c("red", "orange", "yellow", "blue", "green")
)
print(result)

#Intall.packages("plotrix")
library(plotrix)
#search()
# import plotrix to use pie3D()
library(plotrix)
expenditure <- c(600, 300, 150, 100, 200)
result <- pie3D(expenditure,
  main = "Monthly Expenditure Breakdown",
  labels = c("Housing", "Food", "Cloths", "Entertainment", "Other"),
  col = c("red", "orange", "yellow", "blue", "green")
)
print(result)

################################################################################
  #R Boxplot
# Syntax 
boxplot(x,                 # vecteur ou liste de vecteurs contenant les données à utiliser pour construire le graphique en boîte et moustaches
        data,              # nom de la data frame contenant les variables à utiliser
        horizontal = FALSE,# si TRUE, le graphique en boîte et moustaches est orienté horizontalement
        notch = FALSE,     # si TRUE, une encoche est dessinée à chaque boîte
        varwidth = FALSE,  # si TRUE, les largeurs des boîtes sont proportionnelles à la racine carrée du nombre d'observations dans chaque groupe
        names,             # noms des groupes à afficher sous chaque boîte
        add = FALSE,       # si TRUE, le graphique est ajouté à un graphique existant
        at = NULL,         # positions des boîtes sur l'axe des x
        range,             # plage de valeurs à inclure dans le graphique en boîte et moustaches
        col = NULL,        # couleurs à utiliser pour dessiner les boîtes
        border = NULL,     # couleurs à utiliser pour les bordures des boîtes
        lty = NULL,        # types de lignes à utiliser pour les boîtes
        lwd = NULL,        # largeurs de ligne à utiliser pour les boîtes
        xlim = NULL,       # limites de l'axe des x
        ylim = NULL,       # limites de l'axe des y
        xlab = NULL,       # étiquette de l'axe des x
        ylab = NULL,       # étiquette de l'axe des y
        main = NULL,       # titre principal du graphique
        sub = NULL,        # sous-titre du graphique
        axes = TRUE,       # si TRUE, les axes sont dessinés
        frame.plot = axes, # si TRUE, un cadre est dessiné autour du graphique
        horizontal = FALSE,# si TRUE, le graphique est dessiné horizontalement
        ...)               # autres paramètres graphiques


# boxplot for ozone reading of airquality dataset
boxplot(mtcars$mpg)


1.# add title, label, new color to boxplot
boxplot(mtcars$mpg,
  main="Mileage Data Boxplot",
  ylab="Miles Per Gallon(mpg)",
  xlab="No. of Cylinders",
  col="orange")

2.# Add Title, Label, New Color to a Boxplot in R
  boxplot(mtcars$mpg,
  main="Mileage Data Boxplot",
  ylab="Miles Per Gallon(mpg)",
  xlab="No. of Cylinders",
  col="orange")
3.# Add Notch to Boxplot in R
  # In R, we add a notch to boxplot to find out how the medians of
  # different data groups match with each other. For example
  boxplot(mpg ~ cyl, data = mtcars,
    main ="Mileage Data Boxplot",
    ylab ="Miles Per Gallon(mpg)",
    xlab ="No. of Cylinders",
    col ="orange",
    notch = TRUE)

################################################################################
  #
  
  
################################################################################
  # Fonction R plot()

# Tracer plusieurs points dans R
# Nous pouvons également tracer plusieurs points sur un graphique en R.
#Pour cela, nous utilisons les vecteurs R. Par exemple
# create a vector x
x <- c(2, 4, 6, 8) 
# create a vector y
y <- c(1, 3, 5, 7)
# plot multiple points
plot(x, y)


# draw a line 
plot(1:5, type="l")

# Different Plot Types in R
# Value	Description
# "p"	Points Plot (Default)
# "l"	Line Plot
# "b"	Both Line and Points
# "s"	Step Plot
# "n"	No Plotting
# "h"	Histogram-like Plot

# Add Title and Label to a Plot in R
plot(1:5,
  main="Plot Sequence of Points", 
  xlab="x-axis", 
  ylab="y-axis")

# Plot Trigonometric Function in R
# sequence vector of values from -pi to pi with 0.1 interval
x = seq(-pi,pi,0.1)
# respective sine value of x
y = sin(x)
# plot y against x
plot(x,y)


################################################################################
  # R Save Plot
  # All the graphs (bar plot, pie chart, histogram, etc.) 
  # we plot in R programming are displayed on the screen by default.
  # Save Plot as bitmap Image
  # Most of the images we come across like jpeg or png are bitmap images.
  #They have a fixed resolution and are pixelated when zoomed enough.
  # Functions in R that help us save plots in this format are jpeg() and png().
1.# Save as jpeg Image
  #In R, to save a plot in jpeg format, we use the jpeg() function. For example,
  # save histogram in jpeg format in current directory
  jpeg(file="histogram1.jpeg")
  # a histogram we want to save
  hist(airquality$Temp)
  # call this function to save the file 
  dev.off()

2.# Save as png Image
  #We use the png() function in R to save plot in png format. For example,
  # save as png image in specific directory with 600*350 resolution
  png(file="C:/Programiz/R-tutorial/histrogram2.png",
  width=600, height=350)
  # a histogram we want to save
  hist(airquality$Temp)
  # a function call to save the file
  dev.off()
  
.# Save Plot as Vector Image
# We can save our plots as vector images in pdf and postscript formats using the pdg() and postscript() function respectively.
# The beauty of vector images is that it is easily resizable. Zooming on the image will not compromise its quality.
# Save as pdf Image
# In R, to save a plot in pdf format, we use the pdf() function. For example,

# save histogram in pdf format in current directory
pdf(file="histogram1.pdf")
# a histogram we want to save
hist(airquality$Temp)
# call this function to save the file 
dev.off()

################################################################################
  # R Color


################################################################################
################################################################################
################################################################################
  # R Data Manipulation 

################################################################################
  # R Read and Write CSV Files

1. # Read a cvs file in R
  chemin="E:\\ISEP2\\Semestre_2\\R\\Cours_R_2023\\Cours_04_Base.csv"  # on peut aussi / alieu de \\
  Base=read.csv2(chemin)
  View(Base)

2.# Number of Rows and Columns of CSV File in R
  ncol(Base) # print total number of columns
  nrow(Base) # print total number of rows

3.# Using min() and max() With CSV Files
  min_data <- min(Base$Note)  # return minimum value of Note column
  min_data <- max(Base$Note)  # return maximum value of Note column 
 
4.# Subset of a CSV File in R cad Sous-ensemble d’un fichier CSV dans R
  sub_data <- subset(Base, Note>14) 
  print(sub_data)

5.# Write Into CSV File in R
# Create a data frame
dataframe1 <- data.frame (
  Name = c("Juan", "Alcaraz", "Simantha"),
  Age = c(22, 15, 19),
  Vote = c(TRUE, FALSE, TRUE))

# write dataframe1 into file1 csv file
write.csv(dataframe1, "nom_fichier",quote = FALSE)

################################################################################
  # R R Read and Write xlsx Files
1.# Read a xlsx or xls File in R
# install xlsx package 
install.package("xlsx")

library("xlsx")
search()
# load xls file
  chemin="E:/ISEP2/Semestre_2/R/Cours_R_2023/Cours_04_Base.xls"  # on peut aussi / alieu de \\
  Base=read.xls(chemin)
  View(Base)
  
  # NB we can specify the sheet to read
  
  # Charger la bibliothèque readxl
  library(readxl)
  search()
  # Lire une feuille donnee d'un fichier .xls
  data <- read_excel("E:/ISEP2/Semestre_2/R/Cours_R_2023/Autres_Exos.xls",sheet = "Scores")
  View(data)
  # oubien
  read_data <- read.xlsx("studentinfo.xlsx", sheetIndex = 1)
  
 data <- read_excel("E:/ISEP2/Semestre_2/R/Cours_R_2023/EXO_Fonction_part1.xlsx",sheetIndex =2)
 View(data)  

2.# xlsx rowIndex and colIndex Argument in R 
 # cad lire une plage specifique de lignes et de colonnes

  chemin="E:/ISEP2/Semestre_2/R/Cours_R_2023/Cours_04_Base.xls"  # on peut aussi / alieu de \\
  # Base=read_excel(chemin,rowIndex=1),colIndex=2)
  print(Base) 

3.# Write Into xlsx File in R
# install xlsx package 
# install.packages("xlsx")
# # load xlsx file
# library("xlsx")
# search()
# create a data frame
  dataframe1 <- data.frame (
    Name = c("Juan", "Alcaraz", "Simantha"),
    Age = c(22, 15, 19),
    Vote = c(TRUE, FALSE, TRUE))
  
  # write dataframe1 into file1 xlsx file
  write.xlsx(dataframe1, "file1.xlsx")  

########################################################################
  # R dataset  
1.# Display R datasets
  print(Base)
  
2.# Get informations dataset
  dim() #- returns the dimension of the dataset 
  nrow() #- returns the number of row (observations) 
  ncol() #- returns the number of column (variables) 
  names() #- returns all the name of variables
# For example :
  dim(Base) 
  nrow(Base)
  ncol(Base)
  names(Base)
  
3.# Display Variables Value in R  i.e afficher les donnees d'une var
 print(Base$Mention) 
 
4.# Sort Variables Value in R 
 sort(Base$Mention)
 sort(Base$age)

5.# Statistical Summary of Data in R 
 summary(Base)
 
 
########################################################################
  #  R min() and max()
1.# Syntax of min() and max() in R

min(collection, na.rm = Boolean) # Boolean is TRUE or FALSE
max(collection, na.rm = Boolean) # Boolean is TRUE or FALSE
 
2.# Using 
  numbers <- c(2,4,6,8,10)
  min(numbers)  # 2
  max(numbers)  # 10
  characters <- c("s", "a", "p", "b")
  min(characters)  # "a" 
  max(characters)  # "s" 
  
3.# min() and max() in a Data Frame

dataframe1 <- data.frame (
  Name = c("Juan", "Kay", "Jay", "Ray", "Aley"),
  Age = c(22, 15, 19, 30, 23),
  ID = c(101, 102, 103, 104, 105)
)

# return maximum value of Age column of dataframe1
print(max(dataframe1$Age)) # 30

# return minimum value of ID column of dataframe1 
print(min(dataframe1$ID)) # 101 
 
########################################################################
  # R Mean, Median, and Mode 
# Each of these statistics defines the middle differently.
# The mean is the average of a data set.
# The mode is the most common number in a data set.
# The median is the middle of the set of numbers.
# For example
x <- c(97, 78, 57,78, 97, 66, 87, 64, 87, 78)
mean(x)
mode(x)
median(x)

########################################################################
  # R Percentile
1.# Calculate Percentile in R
  # In R, we use the quantile() function to calculate the percentile.
  # For example:
  x <- c(97, 78, 57, 64, 87)
  # calculate 70th percentile of marks
  quantile(x, 0.70)
2.# Calculate Multiple Percentile a Vector in R
  x <- c(97, 78, 57, 64, 87)
  quantile(x, c(0.25,0.5,0.70,0.85))

3.# Calculate Percentile in R Data Frame

  # Create a data frame
  dataframe1 <- data.frame (
    Name = c("Juan", "Kay", "Jay", "Ray", "Aley"),
    Age = c(22, 15, 19, 30, 23),
    ID = c(101, 102, 103, 104, 105)
  )
  # calculate 55th and 27th percentile of the Age column
  result <- quantile(dataframe1$Age, c(0.55, 0.27))
  print(result)

################################################################################
################################################################################
################################################################################
  # R Additional Topics
  
################################################################################
  #R Date
1.# Get Current System Date and Time in R
Sys.Date()  # get current system date
Sys.time() # get current system time
2.# Get Current Date Using R lubridate Package
# access lubridate package
 library(lubridate) 
search()
# get current date with time and timezone
now()
3.# 2. Extraction Years, Months, and Days from Multiple Date Values in R
  library(lubridate) 
  
  dates <- c("2022-07-11", "2012-04-19", "2017-03-08")
  year(dates)  # extract years from dates
  month(dates) # extract months from dates
  mday(dates)  # extract days from dates
  
4.# 3. Manipulate Multiple Date Values in R
  library(lubridate)
  search()
  dates <- c("2022-07-11", "2012-04-19", "2017-03-08")
  # increase each year by one year
  print(ymd(dates) %m+% years(1))
  # increase each month by one month 
  print(ymd(dates) %m+% months(1))
  
  mday(dates) <- c(22, 18, 15) # update days
  print(dates)  

4.# Using update() to Update Multiple dates Values in R
# In R, we can use the update() function to update multiple dates values all at once.
# For example:
library(lubridate)
dates <- c("2022-07-11", "2012-04-19", "2017-03-08")
# update all date values using update() 
new_dates <- update(dates, 
  year = c(2022, 2015, 2019), 
  month = c(9, 12, 1), 
  day = c(21, 2, 13))

################################################################################
  # R Objects and Classes
#vc*****************************************************************************

  # Système de classes dans R
  # Alors que la plupart des langages de programmation ont un système de classes unique, R a trois systèmes de classes:
  # 
  # Classe S3
  # Classe S4
  # Classe de référence
1. # Classe S3
  # Nous créons d’abord une liste avec différents composants, puis nous créons une classe à l’aide de la fonction. 
  # Par exempleclass()
  # create a list with required components
  student1 <- list(name = "John", age = 21, GPA = 3.5)
  # name the class appropriately
  class(student1) <- "Student_Info"
  # create and call an object
  student1

  class(student1) <- "Student_Info"

2.# Classe S4 dans R

  setClass("Student_Info", slots=list(name="character", age="numeric", GPA="numeric"))
  # Maintenant, pour créer un objet, nous utilisons la fonction. Par exemplenew()
  #student1 <- new("Student_Info", name = "John", age = 21, GPA = 3.5)
  
  # Exemple : classe S4 dans R
  # create a class "Student_Info" with three member variables
  setClass("Student_Info", slots=list(name="character", age="numeric", GPA="numeric"))
  # create an object of class 
  student1 <- new("Student_Info", name = "John", age = 21, GPA = 3.5)
  # call student1 object 
  student1

3.# Classe de référence dans R
  # Les classes de référence ont été introduites plus tard, par rapport aux deux autres. Il est plus similaire à la programmation orientée objet que nous avons l’habitude de voir dans d’autres grands langages de programmation.
  # La définition d’une classe de référence est similaire à la définition d’une classe S4. Au lieu de nous utilisons la fonction. Par exemplesetClass()setRefClass()
  # create a class "Student_Info" with three member variables
   Student_Info <- setRefClass("Student_Info",
   fields = list(name = "character", age = "numeric", GPA = "numeric"))
   # Student_Info() is our generator function which can be used to create new objects
  # student1 <- Student_Info(name = "John", age = 21, GPA = 3.5)
  # call student1 object
  student1




















# Ce doc est compose de l'ensembles des homework donnes depuis le  debut de la seance

# Homework1 va de la ligne de va de la ligne 5 a la ligne 225.
# Il faut que noter l'exercice se trouve en base de ce homework
# Homework2 demarre a la ligne 226 jusqu'au la fin.



#   Homework2 du 03/04/2023
i <- 1
#while (i <= 10) {
  print(i)
  i <- i + 1
}

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
















