shinyServer(
  function(input,output){
    
    
    library(plotrix)
    library(stringi)
    library(stringr)
    
    
    posfetch<-read.csv("pos.csv",header=TRUE)
    View(posfetch)
    posfetch$pos
    
        negfetch<-read.csv("neg.csv",header=TRUE)
    View(negfetch)
    negfetch$neg
    
    
    flagfetch<-read.csv("flag.csv",header=TRUE)
    View(flagfetch)
    
    
    
    
    
    #x=c("a","b","c","c","c","d","d","d","f","d","g","e","a","b","c","c","c","d","d","d","f","d","g","e","a","b","c","c","c","d","d","d","f","d","g","e","g")
    tech<- read.csv("FeedbackForm.csv",header=TRUE)
    tech$ProjectTechnologies
    tech$ProjectTechnologies=tolower(tech$ProjectTechnologies)
    
    tech1<-gsub(","," ",tech$ProjectTechnologies)
    nrow(tech)
    
    techa<-c(1:14)
    
    count<-c(1:14)
    un=0
    c=1
    cn=0
    m=1
    i=1
    k=1
    i=1
    m=1
    for(m in m:nrow(tech))
    {
      techs<-strsplit(tech1," ")[[m]]
      
      
      i=1 
      for(i in i:length(techs))
      { 
        j=1
        cn=cn+1
        
        for(j in j:length(techa))
        {
          
          
          
          if(stri_cmp_eq(techs[i],techa[j]))
          {
            
            count[c]=j
            c=c+1
            
            l=j
            break
          }
          
          l=j
        }
        if((l+1)>length(techa))
        {
          techa[k]=techs[i]
          un=un+1
          count[c]=k
          c=c+1
          k=k+1
        }
      }
      
    }
    cn
    techa
    cn1=1
    un
    
    techa1<-c(1:un)
    t=1
    for(t in 1:un)
    {
      techa1[t]=techa[t]
    }
    techa1
    
    count1<-c(1:cn)
    for(cn1 in 1:cn)
    {
      count1[cn1]=count[cn1]
    }
    count1
    
    count2<-c(1:un)
    f=1
    for(f in 1:length(count2))
    {
      count2[f]=0
    }
    count2
    s=1
    z=1
    for(z in 1:length(count1))
    {
      s=count1[z]
      count2[s]=count2[s]+1
      
    }
    count2
    
    #x=techa1
    #y=count2
    
    Frequency<-count2
    TechnologyNames <-techa1
    length(TechnologyNames)
    length(Frequency)
    
    #TechnologyName<-techa
    
    
    output$distplot<-
      renderPlot(
        pie(Frequency,labels=TechnologyNames,col = rainbow(length(Frequency)))
        
        #pie3D(xy,labels = lbl,explode = 0.1, main = "Pie Chart of Technologies ")
      )
    
    
    ####################################################################################################################
    
    stech<- read.csv("FeedbackForm.csv",header=TRUE)
    View(stech)
    stech$Suggestions
    stech$Suggestions=tolower(stech$Suggestions)
    
    stech1<-gsub(","," ",stech$Suggestions)
    nrow(stech)
    
    stecha<-c(1:14)
    
    scount<-c(1:14)
    sun=0
    sc=1
    scn=0
    sm=1
    si=1
    sk=1
    si=1
    sm=1
    for(sm in sm:nrow(stech))
    {
      stechs<-strsplit(stech1," ")[[sm]]
      
      
      si=1 
      for(si in si:length(stechs))
      { 
        sj=1
        scn=scn+1
        
        for(sj in sj:length(stecha))
        {
          
          
          
          if(stri_cmp_eq(stechs[si],stecha[sj]))
          {
            
            scount[sc]=sj
            sc=sc+1
            
            sl=sj
            break
          }
          
          sl=sj
        }
        if((sl+1)>length(stecha))
        {
          stecha[sk]=stechs[si]
          sun=sun+1
          scount[sc]=sk
          sc=sc+1
          sk=sk+1
        }
      }
      
    }
    scn
    stecha
    scn1=1
    sun
    
    stecha1<-c(1:sun)
    st=1
    for(st in 1:sun)
    {
      stecha1[st]=stecha[st]
    }
    stecha1
    
    scount1<-c(1:scn)
    for(scn1 in 1:scn)
    {
      scount1[scn1]=scount[scn1]
    }
    scount1
    
    scount2<-c(1:sun)
    sf=1
    for(sf in 1:length(scount2))
    {
      scount2[sf]=0
    }
    scount2
    ss=1
    sz=1
    for(sz in 1:length(scount1))
    {
      ss=scount1[sz]
      scount2[ss]=scount2[ss]+1
      
    }
    scount2
    
    #x=techa1
    #y=count2
    
    sFrequency<-scount2
    sTechnologyNames<-stecha1
    
    length(sFrequency)
    length(sTechnologyNames)
    
    
    output$distplot1<-
      renderPlot(
        pie(sFrequency,labels=sTechnologyNames,col = rainbow(length(sFrequency)))
        
        #pie3D(xy,labels = lbl,explode = 0.1, main = "Pie Chart of Technologies ")
      )
    #########################################################################################################################################
    
    library(tm)
    library(RTextTools)
    library(e1071)
    library(dplyr)
    library(caret)
    library(doParallel)
    library(doSNOW)
    #read csv file
    
    flagset<-flagfetch$flag
    
    
      if(flagset[nrow(flagfetch)]==1)
      {
        
        
        
        feedbk<-read.csv("G:/project new dr/dataframeerror/datasetcsv.csv", header=TRUE)
        set.seed(1)
        feedbk<-feedbk[sample(nrow(feedbk)), ]
        View(feedbk)
        feedbk<-feedbk[sample(nrow(feedbk)), ]
        View(feedbk)
        
        feedbk$class <- as.factor(feedbk$class)
        str(feedbk$class)
        View(feedbk)
        library(corpus)
        install.packages("G:/project new dr/dataframeerror/datasetcsv.csv",repos=NULL)
        #creating text document
        corpus<- Corpus(VectorSource(feedbk$text))
        
        library(tm)
        corpus
        inspect(corpus[1:2002])
        
        #version problen to content_transformer
        #cleaning dataset removing punctuations etc
        corpus.clean <- corpus %>%
          tm_map((tolower)) %>% 
          tm_map(removePunctuation) %>%
          tm_map(removeNumbers) %>%
          tm_map(removeWords, stopwords(kind="en")) %>%
          tm_map(stripWhitespace)
        
        
        dtm <- DocumentTermMatrix(corpus.clean)
        #inspect(dtm[40:50,10:15])
        View(dtm)
        
        feedbk.train<-feedbk[1:700, ]
        feedbk.test<-feedbk[701:1060, ]
        
        dtm.train<-dtm[1:700, ]
        dtm.test<-dtm[701:1060, ]
        
        corpus.clean.train<-corpus.clean[1:700]
        corpus.clean[1]
        corpus.clean.test<-corpus.clean[701:1060]
        
        
        dim(dtm.train)
        
        #words whose frequency count>5
        fivefre<-findFreqTerms(dtm.train,5)
        length(fivefre)
        dtm.train.nb<-DocumentTermMatrix(corpus.clean.train,control=list(dictionary=fivefre))
        dim(dtm.train.nb)
        
        dtm.test.nb<-DocumentTermMatrix(corpus.clean.test,control=list(dictionary=fivefre))
        dim(dtm.test.nb)
        
        convert_count<-function(x)
        {
          y<-ifelse(x>0,1,0)
          y<-factor(y,levels=c(0,1),labels=c("No","yes"))
          y
          
        }
        convert_count
        trainNB <- apply(dtm.train.nb,2,convert_count)
        testNB <- apply(dtm.test.nb,2,convert_count)
        testNB
        
        system.time(classifier<-naiveBayes(trainNB,feedbk.train$class,lplace=1))
        system.time(pred<-predict(classifier,newdata=testNB))
        pred
        #pred$probabilities
        
        pred$probabilities
        table("predictions"=pred,"actual"=feedbk.test$class)
        
        conf.mat<-confusionMatrix(pred,feedbk.test$class)
        conf.mat
        conf.mat$byClass
        conf.mat$overall
        conf.mat$overall['Accuracy']
        
    #############################################################################
    
    
    
    feedtest<-read.csv("FeedbackForm.csv",header=TRUE)
    View(feedtest)
    reviews<-feedtest$Reviews
    
    
    feedlower<-tolower(feedtest$Reviews)
    feedlower
    
    #techlower<-tolower(feedtest$ProjectTechnologies)
    #techlower
    techlower<-TechnologyNames
    length(techlower)
    ncol(techlower)
    techlower[11]
    
    pos<-c(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0)
    length(pos)
    neg<-c(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0)
    
    
    i=1
    s="";
    
    test<-read.csv("FeedbackTest.csv",header=TRUE)
    nrow(test)
    
    index=0
    
    for(i in 1:nrow(feedtest))
    {
      feedsplit<-strsplit(feedlower," ")[[i]]
      #feedsplit[1]
      j=1
      s="";
      
      for(j in 1:length(feedsplit))
      {
        
        s=paste(s,feedsplit[j]) 
        
        
        word<-feedsplit[j]
        #print(word)
        
        k=1
        
        for(k in 1:length(techlower))
        {
          
          #if (is.null(word))
          # next
           #word<-"android"
          if(stri_cmp_eq(word,techlower[k]))
          {
            index=k
            #print(index)
            break;
          }
          
          
        }
        
        
        if(stri_cmp_eq(feedsplit[j],"."))
        {
          
          
          
          ans="pos"
          dataplus<- data.frame(ans,s)
          s="";
          write.table( dataplus,  
                       file="FeedbackTest.csv", 
                       append = T, 
                       sep=',', 
                       row.names=F, 
                       col.names=F )
          
          
          #file for testing
          
          ##########################################################################################
          feedbk1<-read.csv("FeedbackTest.csv", header=TRUE)
          View(feedbk1)
          
          #feedbk1<-read.csv("G:/project new dr/rcsv50.csv", header=TRUE)
          #feedbk1
          #set.seed(1)
          #feedbk<-feedbk[sample(nrow(feedbk)), ]
          #View(feedbk)
          #feedbk1<-feedbk1[sample(nrow(feedbk1)), ]
          #View(feedbk1)
          
          #feedbk$class <- as.factor(feedbk$class)
          #feedbk1$class <- as.factor(feedbk1$class)
          
          
          #str(feedbk$class)
          #View(feedbk)
          #library(corpus)
          #install.packages("G:/project new dr/tm.zip",repos=NULL) ..............slam
          #creating text document
          library(tm)
          #corpus<- Corpus(VectorSource(feedbk$text))
          corpus1<- Corpus(VectorSource(feedbk1$Reviews))
          
          
          
          corpus1
          #inspect(corpus[1:2002])
          
          #version problen to content_transformer
          #cleaning dataset removing punctuations etc
          # corpus.clean <- corpus %>%
          #tm_map((tolower)) %>% 
          #tm_map(removePunctuation) %>%
          #tm_map(removeNumbers) %>%
          #tm_map(removeWords, stopwords(kind="en")) %>%
          #tm_map(stripWhitespace)
          
          corpus1.clean <- corpus1 %>%
            tm_map((tolower)) %>% 
            tm_map(removePunctuation) %>%
            tm_map(removeNumbers) %>%
            tm_map(removeWords, stopwords(kind="en")) %>%
            tm_map(stripWhitespace)
          
          
          #dtm <- DocumentTermMatrix(corpus.clean)
          dtm1 <- DocumentTermMatrix(corpus1.clean)
          
          #inspect(dtm[40:50,10:15])
          #View(dtm)
          nrow(feedbk1)
          #feedbk.train<-feedbk[1:1060, ]
          feedbk.test<-feedbk1[1:nrow(feedbk1), ]
          
          #dtm.train<-dtm[1:1060, ]
          #dtm.test<-dtm1[1:104, ]
          
          #corpus.clean.train<-corpus.clean[1:1060]
          #corpus.clean[1]
          corpus.clean.test<-corpus1.clean[1:nrow(feedbk1)]
          
          
          #dim(dtm.train)
          
          #words whose frequency count>5
          #fivefre<-findFreqTerms(dtm.train,5)
          #length(fivefre)
          #dtm.train.nb<-DocumentTermMatrix(corpus.clean.train,control=list(dictionary=fivefre))
          #dim(dtm.train.nb)
          
          dtm.test.nb<-DocumentTermMatrix(corpus.clean.test,control=list(dictionary=fivefre))
          dim(dtm.test.nb)
          
          # convert_count<-function(x)
          # {
          #   y<-ifelse(x>0,1,0)
          #   y<-factor(y,levels=c(0,1),labels=c("No","yes"))
          #   y
          #   
          # }
          convert_count
          #trainNB <- apply(dtm.train.nb,2,convert_count)
          testNB <- apply(dtm.test.nb,2,convert_count)
          testNB
          
          # system.time(classifier<-naiveBayes(trainNB,feedbk.train$class,lplace=1))
          
          #saveRDS(classifier,"./classifier.rds")
          #supermodel<- readRDS("./classifier.rds")
          
          
          system.time(pred1<-predict(classifier,newdata=testNB))
          #pred1[27]
          #print(pred1)
          #pred1[35]
          if(stri_cmp_eq(pred1[nrow(feedbk1)],"pos"))
          {
            pos[index]=pos[index]+1;
            
            
          }
          
          if(stri_cmp_eq(pred1[nrow(feedbk1)],"neg"))
          {
            neg[index]=neg[index]+1;
          }
          
          length(pos)
          length(neg)
          
        }
        
      }
    }
    pos <- data.frame(pos)
    
    write.table(pos, file = 'pos.csv', row.names=FALSE,col.names=TRUE)
    neg <- data.frame(neg)
    
    write.table(neg, file = 'neg.csv', row.names=FALSE,col.names=TRUE)
    
      }#admin fun
   
    
    
    pred1[50]
   
    # data<-data.frame(TechnologyNames,Frequency)
    # data1<-data.frame(Frequency,TechnologyNames)
    # data2<-data.frame(sTechnologyNames,pos,neg)
    # data3<-data.frame(sTechnologyNames,sFrequency)
    # data4<-data.frame(sFrequency,sTechnologyNames)
    
    
    
    ################################################################################################################
    options(shiny.sanitize.errors = TRUE)    
  }
)