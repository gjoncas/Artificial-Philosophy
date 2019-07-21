#Ramsay - Reading Machines: Toward an Algorithmic Criticism (2011)

p = "Tell all the truth but tell it slant-
Success in Circuit lies
Too bright for our infirm Delight
The Truth's superb surprise
As lightning to the Children eased
With explanation kind
The Truth must dazzle gradually
Or every man be blind-"

#simple program to flip the lines of a poem (Ramsay, 2011: 34-5)
backwords <- function(p) {
  v = unlist(strsplit(p,"\n"))    #split into vector of lines
  z = rev(v)                      #reverse order of lines
  write(z,"")                     #print without array index
}

  #without rev function: define n = length(v)
  #then loop: for (i in (n:1)) {write(v[i],"")}


#Reverses both lines & words (Ramsay, 2011: 88, n. 1), fixes capitals & punctuation
backpoem <- function(p) {
  v = unlist(strsplit(p,"\n"))      #decompose poem into vector of lines
  w = rev(v)                        #reverse lines
  n = length(v)
  z = vector(length=n)              #empty vector
  
  for (i in (1:n)) {
    q = unlist(strsplit(w[i]," "))              #vector with words of each line
    m = length(q)
    
    last = nchar(q[m])                          #last character in the word
    q[1] = tolower(q[1])                        #lowercase in last word
    q[m] = paste(toupper(substr(q[m],1,1)), 
           substr(q[m],2,last), sep="")         #capitalize first word
    
    if (grepl("[[:punct:]]",q[m])) {            #check for punctuation
    q[1] = paste0(q[1],substr(q[m],last,last))  #add punctuation after first word
    q[m] = substr(q[m],1,(last-1))              #remove punctuation from last word
    }
    
    z[i] = paste(rev(q),collapse=" ")           #reverse words in each line, then rejoin
    write(z[i],"")                              #print without array index
    }
}


#"Entropic" poem - removing all word-level redundancy (Ramsay, 2011: 36-8)

#Dylan Thomas - "The Force That through the Green Fuse Drives the Flower"
t = "The force that through the green fuse drives the flower
Drives my green age; that blasts the roots of trees
Is my destroyer.
And I am dumb to tell the crooked rose
My youth is bent by the same wintry fever.

The force that drives the water through the rocks
Drives my red blood; that dries the mouthing streams
Turns mine to wax.
And I am dumb to mouth unto my veins
How at the mountain spring the same mouth sucks.

The hand that whirls the water in the pool
Stirs the quicksand; that ropes the blowing wind
Hauls my shroud sail.
And I am dumb to tell the hanging man
How of my clay is made the hangman's lime.

The lips of time leech to the fountain head;
Love drips and gathers, but the fallen blood
Shall calm her sores.
And I am dumb to tell a weather's wind
How time has ticked a heaven round the stars.

And I am dumb to tell the lover's tomb
How at my sheet goes the same crooked worm."

entropic <- function(t) {
  w = gsub("\n"," ",tolower(t))   	#remove line breaks; lowercase
  v = unlist(strsplit(w," "))     	#split into vector of words
  v = v[which(v!="")]             	#delete blanks (because \n\n)
  
  for (i in (1:length(v))) {
    n = nchar(v[i])                     #last letter in word
    last = substr(v[i],n,n)
    if (grepl("[[:punct:]]",last)) {    #check if last letter is punctuation
      v[i] = substr(v[i],1,(n-1))       #remove punctuation
    }
  }
  
  u = unique(v)                               #unique words, ordered by appearance
  count = NULL                                #empty vector
  for (j in (1:length(u))) {
    count = c(count,length(which(v==u[j])))   #count occurrences of each word
  }
  
  paste(count,u)                        #print number of occurrences, then word
}