BEGIN { data=1000 }
NF>0{
   s="";
   for(i=1;i<=NF;i++) {
      if((length(s)+(length($i)+1))>39) {
         printf("%04d data \"%s\"\n",data,s);
         data++;
         s="";
      }
      s=s $i " ";            
   }
   if(length(s)>0) {
      printf("%04d data \"%s\"\n",data,s);
      data++
      s="";
   }
   printf("%04d data \"*\"\n",data);
   data++;
}
END {
   printf("%04d data \"***\"\n",data);
}
