<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html lang="en">
<head>
  
   <tiles:insertAttribute name="head" />
 
</head>
<body>


  <tiles:insertAttribute name="menu" />


  <main style="background: #EEF1F2;">
      <tiles:insertAttribute name="body" />
  </main>


  <tiles:insertAttribute name="footer" />



</body>
</html>