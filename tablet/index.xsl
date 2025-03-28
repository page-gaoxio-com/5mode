<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
		xmlns:xlink="http://www.w3.org/1999/xlink"
		version="1.0"> 

<xsl:output method="html" version="4"/>

<!-- File name: index.xsl 
BSD 3-Clause License

Copyright (c) 2021, 2024, 5 Mode
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this
   list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice,
   this list of conditions and the following disclaimer in the documentation
   and/or other materials provided with the distribution.

3. Neither the name of the copyright holder nor the names of its
   contributors may be used to endorse or promote products derived from
   this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
-->

<xsl:template match="CONTENT">

<HTML>
<head>

   <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1"/>
    
<!--

/**
 * Copyright 2016, 2026 5 Mode.
 *
 * This file is part of AboutPage.
 * 
 * AboutPage is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * AboutPage is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU General Public License for more details.  
 * 
 * You should have received a copy of the GNU General Public License
 * along with AboutPage. If not, see <https://www.gnu.org/licenses/>.
 *
 * home.php
 * 
 * Home of AboutPage.
 *
 * @author Daniele Bonini <my25mb@has.im>
 * @copyrights (c) 2016, 2026, 5 Mode
 */

-->  
  
  <title>Page</title>

  <link rel="shortcut icon" href="/favicon.ico" />

  <meta name="description" content="Welcome to the starting page of your web browser!"/>
  <meta name="keywords" content="5 Mode,about:page"/>
  <meta name="robots" content="index,follow"/>
  <meta name="author" content="5 Mode"/>
  
  <script src="/js/jquery-3.6.0.min.js" type="text/javascript"></script>
  <script src="/js/bootstrap.min.js" type="text/javascript"></script>
  <script src="/js/common.js" type="text/javascript"></script>  
  <script src="/js/home.js" type="text/javascript"></script> 
  
  <link href="/css/bootstrap.min.css" type="text/css" rel="stylesheet"></link>    
  <link href="/css/style.css" type="text/css" rel="stylesheet"></link>

  <script>
  //<![CDATA[
  window.addEventListener("load", function() {
      if (window.innerWidth>1700) {
        window.open("/desktop","_self");
      } else if ((window.innerWidth<1700) && (window.innerWidth>1000)) {
        //window.open("/tablet","_self");
      } else if (window.innerWidth<1000) {
        window.open("/","_self");
      }     
  }, true);    

  window.addEventListener("resize", function() {
      if (window.innerWidth>1700) {
        window.open("/desktop","_self");
      } else if ((window.innerWidth<1700) && (window.innerWidth>1000)) {
        //window.open("/tablet","_self");
      } else if (window.innerWidth<1000) {
        window.open("/","_self");
      }     
  }, true);  
  //]]>
  </script>

  <script>
  //<![CDATA[
  function openThatLink() {
    l = prompt('Open:');
    if (l) {
       window.open(l, '_self');
    }   
  }
  //]]>
  </script>

</head>
<BODY>

<div id="content" style="min-width:800px;">

   <div class="master-table">

          <img  id="wiz" src="/res/wiz.png"/><br/><br/>

          <div id="MainBook" class="bookmark-cont">
          
              <a href="#" onclick="openThatLink();">Open</a><br/> 
          
              <xsl:for-each select="ITEM[TYPE='MainBook']">
              
              <a>
                <xsl:attribute name="href"><xsl:value-of select="URL"/></xsl:attribute>
                <xsl:value-of select="CAPTION"/>
              </a><br/> 
              
              </xsl:for-each>
          
          </div>

          <div id="SocialBook" class="bookmark-cont">
              <h3>Social Book</h3>
              
              <xsl:for-each select="ITEM[TYPE='SocialBook']">
              
              <a>
                <xsl:attribute name="href"><xsl:value-of select="URL"/></xsl:attribute>
                <xsl:value-of select="CAPTION"/>
              </a><br/> 
              
              </xsl:for-each>

          </div>      

   </div>            
   <div class="master-table">       
                     
          <br/>           
                     
          <div id="GameBook" class="bookmark-cont">
              <h3>Game Book</h3>
              
              <xsl:for-each select="ITEM[TYPE='GameBook']">
              
              <a>
                <xsl:attribute name="href"><xsl:value-of select="URL"/></xsl:attribute>
                <xsl:value-of select="CAPTION"/>
              </a><br/> 
              
              </xsl:for-each>
              
          </div>      

          <div id="TravelBook" class="bookmark-cont">
              <h3>Travel Book</h3>
              
              <xsl:for-each select="ITEM[TYPE='TravelBook']">
              
              <a>
                <xsl:attribute name="href"><xsl:value-of select="URL"/></xsl:attribute>
                <xsl:value-of select="CAPTION"/>
              </a><br/> 
              
              </xsl:for-each>
          </div>      

          <div id="WorkBook" class="bookmark-cont">
              <h3>Work Book</h3>

              <xsl:for-each select="ITEM[TYPE='WorkBook']">
              
              <a>
                <xsl:attribute name="href"><xsl:value-of select="URL"/></xsl:attribute>
                <xsl:value-of select="CAPTION"/>
              </a><br/> 
              
              </xsl:for-each>
          
          </div>                           

          <div id="DevBook" class="bookmark-cont">
          
              <h3>Dev Book</h3>
              
              <xsl:for-each select="ITEM[TYPE='DevBook']">
              
              <a>
                <xsl:attribute name="href"><xsl:value-of select="URL"/></xsl:attribute>
                <xsl:value-of select="CAPTION"/>
              </a><br/> 
              
              </xsl:for-each>
              
          </div>                                                                                          

   </div>            
   <div class="master-table">
           
           <br/>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
           <div id="ReferenceBook" class="bookmark-cont">
              <h3>Reference Book</h3>

              <xsl:for-each select="ITEM[TYPE='ReferenceBook']">
              
              <a>
                <xsl:attribute name="href"><xsl:value-of select="URL"/></xsl:attribute>
                <xsl:value-of select="CAPTION"/>
              </a><br/> 
              
              </xsl:for-each>
              
           </div>      

           <div id="PersonalBook" class="bookmark-cont">
              <h3>Personal Book</h3>
              
              <xsl:for-each select="ITEM[TYPE='PersonalBook']">
              
              <a>
                <xsl:attribute name="href"><xsl:value-of select="URL"/></xsl:attribute>
                <xsl:value-of select="CAPTION"/>
              </a><br/> 
              
              </xsl:for-each>

          </div>            

           <div id="5ModeBook" class="bookmark-cont">
              <h3>5mode Book</h3>
              
              <xsl:for-each select="ITEM[TYPE='5modeBook']">
              
              <a>
                <xsl:attribute name="href"><xsl:value-of select="URL"/></xsl:attribute>
                <xsl:value-of select="CAPTION"/>
              </a><br/> 
              
              </xsl:for-each>

              <br/><br/>           
              <a href="http://gaox.io/l/dona1" class="donate">Donate!</a><br/>              
                                                                                                                                                                                                                                                                                                                                                                              
          </div>      

          <div style="clear:both;margin:auto;">          
          <br/><br/><br/><br/>                                 
          </div>
          
    </div>
                                                                                  
</div>

</BODY>
</HTML>

</xsl:template>

</xsl:stylesheet>
