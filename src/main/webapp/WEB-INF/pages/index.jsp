<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib prefix="s" uri="/struts-tags" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link rel="stylesheet" type="text/css" href="css/index.css"/>
<link rel="stylesheet" type="text/css" href="css/common.css"/>
<style>
			
			body > h2 { margin: 30px 0 15px; text-shadow: 1px 1px 0 white; border-bottom: 2px solid #333; padding-bottom: 5px }
			h1 { text-align: center; margin-bottom: 30px; text-shadow: 1px 1px 0 white }
			dt { font-weight: bold }
			dd { margin: 0 }
			figure { display: block; width: 100%; height: 100%; margin: 0 }
			figcaption { padding: 10px 15px; position: absolute; bottom: 20px; right: 30px; z-index: 3; background: black; background: rgba(0,0,0,0.7); color: white;
				-webkit-border-radius: 4px; -moz-border-radius: 4px; border-radius: 4px }
		</style>
		<link rel="stylesheet" href="css/liteaccordion.css">
		<link href="http://alexgorbatchev.com.s3.amazonaws.com/pub/sh/3.0.83/styles/shCore.css" rel="stylesheet" />
		<link href="http://alexgorbatchev.com.s3.amazonaws.com/pub/sh/3.0.83/styles/shThemeDefault.css" rel="stylesheet" />
</head>

<body>
<jsp:include page="head.jsp" /> 
<div class="div1">
  <div class="div2">
    <div class="div2-1">
     <s:action name="catalogAction" executeResult="true"></s:action> 
     
      <ul>
      <li>读书破万卷，下笔
        <br />
        如有神</li>
      <li>知之者不如好之者，<br />
        好之者不如乐之者</li>
      </ul>
    </div>
    <div class="div2-2">
      <table width="200" border="0" cellpadding="0" cellspacing="0" class="tb2">
        <tr>
          <td>广告型文本</td>
        </tr>
        <tr>
          <td>广告型文本</td>
        </tr>
        <tr>
          <td>广告型文本</td>
        </tr>
        <tr>
          <td>广告型文本</td>
        </tr>
        <tr>
          <td>广告型文本</td>
        </tr>
        <tr>
          <td>广告型文本</td>
        </tr>
        <tr>
          <td>广告型文本</td>
        </tr>
        <tr>
          <td>广告型文本</td>
        </tr>
        <tr>
          <td>广告型文本</td>
        </tr>
      </table>
    </div>
  </div>
  <div class="div3">
  <div class="div3-1">
  <div id="one" class="accordion">
		    <ol>
				<li>
				    <h2><span>Slide One</span></h2>
				    <div>
						<figure>
							<img src="images/gg2.jpg" alt="image" width="450" height="300" />
							<figcaption>I can haz big caek?</figcaption>
						</figure>
					</div>
				</li>
				<li>
				    <h2><span>Slide Two</span></h2>
				    <div>
						<figure>
							<img src="images/gg3.jpg" alt="image" width="450" height="300" />
							<figcaption>Whoops.</figcaption>
						</figure>
					</div>
				</li>
				<li>
				    <h2><span>Slide Three</span></h2>
				    <div>
						<figure>
							<img src="images/gg4.jpg" alt="image" width="450" height="300" />
							<figcaption>Some caption text goes in here...</figcaption>
						</figure>
					</div>
				</li>
				<li>
				    <h2><span>Slide Four</span></h2>
				    <div>
						<figure>
							<img src="images/gg5.jpg" alt="image" width="450" height="300" />
							<figcaption>Pew pew pew!</figcaption>
						</figure>
					</div>
				</li>
				<li>
				    <h2><span>Slide Five</span></h2>
				    <div>
						<figure>
							<img src="images/gg6.jpg" alt="image" width="450" height="300" />
							<figcaption>More caption text here!</figcaption>
						</figure>
					</div>
				</li>
		    </ol>
			<noscript>
				<p>Please enable JavaScript to get the full experience.</p>
			</noscript>
		</div>
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.4/jquery.min.js"></script>
		<script src="js/liteaccordion.jquery.js"></script>
		<script>
			// liteAccordion demos
			$('#one').liteAccordion({
					onActivate : function() {
						this.find('figcaption').fadeOut();
					},
					slideCallback : function() {	
						this.find('figcaption').fadeIn();
					},
					autoPlay : true,
					pauseOnHover : true,
					theme : 'self',
					rounded : true,
					enumerateSlides : true,
					cycleSpeed : 4000,
					containerWidth : 645, 
	                containerHeight : 300,				
			}).find('figcaption:first').show();
			$('#two').liteAccordion();
			$('#three').liteAccordion({ theme : 'dark', containerWidth : 600, containerHeight : 200, slideSpeed : 600, firstSlide : 2 });
		</script>

		<!-- Syntax Highlighter -->
		<script src="http://alexgorbatchev.com.s3.amazonaws.com/pub/sh/3.0.83/scripts/shCore.js"></script>
		<script src="http://alexgorbatchev.com.s3.amazonaws.com/pub/sh/3.0.83/scripts/shBrushXml.js"></script>
		<script src="http://alexgorbatchev.com.s3.amazonaws.com/pub/sh/3.0.83/scripts/shBrushJScript.js"></script>
		<script>SyntaxHighlighter.all();</script>
		<!-- end Syntax Highlighter -->
  </div>
  <div class="div3-2"></div>
  </div>
  <div class="div4">
  <img src="images/gg1.jpg" width="124" height="607" class="img1" />
  </div>
 </div>
 <jsp:include page="foot.jsp" />
</body>
</html>