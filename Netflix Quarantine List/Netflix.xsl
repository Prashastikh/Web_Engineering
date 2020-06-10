xml version="1.0" encoding="UTF-8"?> 
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"> 
<xsl:template match="/"> 
 
<html> 
 
<style>  
 Body  
  {   
   background-image: url("netflixlogo4.jpg");     
   background-repeat: no-repeat;    
   border: 2px solid black; 
   padding: 25px;     
   background-color: black;    
   background-position: right;     
   background-size: 1100px 700px;  
  } 
  .abc 
  {   
   color: #ff9933;    
   font-weight="strong";    
   font-face = "verdana";  
  }  
  Table 
  {   
   width: 50%;  
  }  
  th, td  
  {   
   text-align: center;padding: 2px;  
  }  
  tr:nth-child(even)  
  {   
   background-color: #ff9933 
  }  
  th  
  {   
   background-color: #006666;  
   color: white;  
  }             
</style> 
<body> 
<h1 class="abc"> 
<center>QUARANTINE STARTER PACK : NETFLIX</center> 
</h1> 
 <table border="1" align="center">               
   <tr bgcolor="silver"> 
   <th>Show Name</th> 
   <th>Viewers</th> 
   <th>Genre</th> 
   <th>Original Release</th> 
   <th>Seasons</th>          
 </tr> 
 <xsl:for-each select="netflix_shows/name"> 
 <tr bgcolor="beige" padding="2px" text-align="center"> 
 <td>       
   <xsl:value-of select="show"/> 
 </td> 
 <td>       
   <xsl:value-of select="viewers"/> 
 </td> 
 <td>       
   <xsl:value-of select="genre"/>
 </td> 
 <td>      
   <xsl:value-of select="year"/>
 </td> 
 <td>       
   <xsl:value-of select="season"/> 
 </td> 
 </tr> 
</xsl:for-each> 
</table> 
</body> 
 
</html> 
</xsl:template> 
</xsl:stylesheet> 
