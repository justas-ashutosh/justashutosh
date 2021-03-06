<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>PhotoProwess | Gallery</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="layout1/styles/layout.css" type="text/css" />
<script type="text/javascript" src="layout1/scripts/jquery.min.js"></script>
<script type="text/javascript" src="layout1/scripts/jquery.ui.min.js"></script>
<script type="text/javascript" src="layout1/scripts/jquery.defaultvalue.js"></script>
<script type="text/javascript" src="layout1/scripts/jquery.scrollTo-min.js"></script>
<script type="text/javascript">
$(document).ready(function () {
    $("#fullname, #validemail, #message").defaultvalue("Full Name", "Email Address", "Message");
    $('#shout a').click(function () {
        var to = $(this).attr('href');
        $.scrollTo(to, 1200);
        return false;
    });
    $('a.topOfPage').click(function () {
        $.scrollTo(0, 1200);
        return false;
    });
    $("#tabcontainer").tabs({
        event: "click"
    });
    $("a[rel^='prettyPhoto']").prettyPhoto({
        theme: 'dark_rounded'
    });
});
</script>
<!-- prettyPhoto -->
<link rel="stylesheet" href="layout1/scripts/prettyphoto/prettyPhoto.css" type="text/css" />
<script type="text/javascript" src="layout1/scripts/prettyphoto/jquery.prettyPhoto.js"></script>
<script type="text/javascript">
$(document).ready(function() {
    $("a[rel^='prettyPhoto']").prettyPhoto({
        theme: 'dark_rounded',
        overlay_gallery: false,
        social_tools: false
    });
});
</script>
<!-- / prettyPhoto -->
</head>
<body id="top">
<div class="wrapper col1">
  <div id="topbar" class="clear">
    <ul>
      <li><a href="#">Libero</a></li>
      <li><a href="#">Maecenas</a></li>
      <li><a href="#">Mauris</a></li>
      <li class="last"><a href="#">Suspendisse</a></li>
    </ul>
    <form action="#" method="post" id="search">
      <fieldset>
        <legend>Site Search</legend>
        <input type="text" value="Search Our Website&hellip;" onfocus="this.value=(this.value=='Search Our Website&hellip;')? '' : this.value ;" />
        <input type="image" id="go" src="images/search.gif" alt="Search" />
      </fieldset>
    </form>
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col2">
  <div id="header" class="clear">
    <div class="fl_left">
      <h1><a href="index.html">PhotoProwess</a></h1>
      <p>Free Website Template</p>
    </div>
    <div id="topnav">
      <ul>
        <li class="active last"><a href="gallery.html">Gallery</a><span>Test Text Here</span></li>
        <li><a href="portfolio.html">Portfolio</a><span>Test Text Here</span></li>
        <li><a href="#">DropDown</a><span>Test Text Here</span>
          <ul>
            <li><a href="#">Link 1</a></li>
            <li><a href="#">Link 2</a></li>
            <li><a href="#">Link 3</a></li>
          </ul>
        </li>
        <li><a href="full-width.html">Full Width</a><span>Test Text Here</span></li>
        <li><a href="style-demo.html">Style Demo</a><span>Test Text Here</span></li>
        <li><a href="index.html">Homepage</a><span>Test Text Here</span></li>
      </ul>
    </div>
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col4">
  <div id="container" class="clear"> 
    <!-- ####################################################################################################### -->
    <div id="shout" class="clear">
      <div class="fl_left">
        <h2>Need A Professional Photographer ?</h2>
        <p>Why not try our services today, you won't regret your choice !</p>
      </div>
      <p class="fl_right"><a href="#contact">Contact Us Today</a></p>
    </div>
    <!-- ####################################################################################################### -->
    <h1>Gallery Category Name Here</h1>
    <div class="gallery clear">
      <ul>
        <li class="first"><img src="images12/demo/572x330.gif" alt="Title Text" /></li>
        <li><a href="images12/demo/572x330.gif" rel="prettyPhoto[gallery1]" title="Image 1"><img src="images12/demo/174x150.gif" alt="Title Text" /></a></li>
        <li><a href="images12/demo/572x330.gif" rel="prettyPhoto[gallery1]" title="Image 2"><img src="images12/demo/174x150.gif" alt="Title Text" /></a></li>
        <li><a href="images12/demo/572x330.gif" rel="prettyPhoto[gallery1]" title="Image 3"><img src="images12/demo/174x150.gif" alt="Title Text" /></a></li>
        <li><a href="images12/demo/572x330.gif" rel="prettyPhoto[gallery1]" title="Image 4"><img src="images12/demo/174x150.gif" alt="Title Text" /></a></li>
        <li class="first"><a href="images/demo/572x330.gif" rel="prettyPhoto[gallery1]" title="Image 5"><img src="images12/demo/174x150.gif" alt="Title Text" /></a></li>
        <li><a href="images12/demo/572x330.gif" rel="prettyPhoto[gallery1]" title="Image 6"><img src="images12/demo/174x150.gif" alt="Title Text" /></a></li>
        <li><a href="images12/demo/572x330.gif" rel="prettyPhoto[gallery1]" title="Image 7"><img src="images12/demo/174x150.gif" alt="Title Text" /></a></li>
        <li><a href="images12/demo/572x330.gif" rel="prettyPhoto[gallery1]" title="Image 8"><img src="images12/demo/174x150.gif" alt="Title Text" /></a></li>
        <li><a href="images12/demo/572x330.gif" rel="prettyPhoto[gallery1]" title="Image 9"><img src="images12/demo/174x150.gif" alt="Title Text" /></a></li>
        <li class="first"><a href="images12/demo/572x330.gif" rel="prettyPhoto[gallery1]" title="Image 10"><img src="images12/demo/174x150.gif" alt="Title Text" /></a></li>
        <li><a href="images12/demo/572x330.gif" rel="prettyPhoto[gallery1]" title="Image 11"><img src="images12/demo/174x150.gif" alt="Title Text" /></a></li>
        <li><a href="images12/demo/572x330.gif" rel="prettyPhoto[gallery1]" title="Image 12"><img src="images12/demo/174x150.gif" alt="Title Text" /></a></li>
        <li><a href="images12/demo/572x330.gif" rel="prettyPhoto[gallery1]" title="Image 13"><img src="images12/demo/174x150.gif" alt="Title Text" /></a></li>
        <li><a href="images12/demo/572x330.gif" rel="prettyPhoto[gallery1]" title="Image 14"><img src="images12/demo/174x150.gif" alt="Title Text" /></a></li>
      </ul>
    </div>
    <!-- ####################################################################################################### -->
    <div class="pagination">
      <ul>
        <li class="prev"><a href="#">&laquo; Previous</a></li>
        <li><a href="#">1</a></li>
        <li><a href="#">2</a></li>
        <li class="splitter">&hellip;</li>
        <li><a href="#">6</a></li>
        <li class="current">7</li>
        <li><a href="#">8</a></li>
        <li><a href="#">9</a></li>
        <li class="splitter">&hellip;</li>
        <li><a href="#">14</a></li>
        <li><a href="#">15</a></li>
        <li class="next"><a href="#">Next &raquo;</a></li>
      </ul>
    </div>
    <!-- ####################################################################################################### -->
    <div class="clear"></div>
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper">
  <div id="footer" class="clear">
    <div class="fl_left">
      <div class="about_us border">
        <h2>About Us</h2>
        <p>Sednulla nam nibh a nibh eu urna facinia mauristibulus sit urna. Vitaerisus lobortis proin elit et curabituris elit estibulum cursus iacus orci. Dignissimmorbi rhoncus sed netus ligula conseque netus nulla aliquat id dui. Ipsumintesque venean hendiment enim nis maecenas justo justo vitae purus sed. Rutrumcondimentumsan elit.</p>
      </div>
      <div id="contact" class="clear">
        <h2>Contact Us</h2>
        <div class="fl_left">
          <form method="post" action="#">
            <label for="fullname">Name:</label>
            <input type="text" name="fullname" id="fullname" value="" />
            <label for="validemail">Email:</label>
            <input type="text" name="validemail" id="validemail" value="" />
            <label for="message">Message:</label>
            <textarea name="message" id="message" cols="45" rows="10"></textarea>
            <button type="submit" value="submit"><span>Submit</span></button>
          </form>
        </div>
        <div class="fl_right">
          <address>
          <strong class="title">Company Name</strong><br />
          Street Name &amp; Number<br />
          Town<br />
          Postcode/Zip
          </address>
          <ul>
            <li><strong class="title">Tel:</strong><br />
              xxxxx xxxxxxxxxx</li>
            <li><strong class="title">Fax:</strong><br />
              xxxxx xxxxxxxxxx</li>
            <li><strong class="title">Email:</strong><br />
              <a href="#">contact@mydomain.com</a></li>
          </ul>
        </div>
      </div>
    </div>
    <!-- ####################################################################################################### -->
    <div class="fl_right">
      <div id="tabcontainer" class="border">
        <ul id="tabnav">
          <li><a href="#tabs-1">From The Blog</a></li>
          <li><a href="#tabs-2">Latest Tweets</a></li>
          <li class="last"><a href="#tabs-3">Interesting Links</a></li>
        </ul>
        <div id="tabs-1" class="tabcontainer">
          <ul class="blogposts">
            <li>
              <p class="posttitle">Justoid nonummy laoreet phasellent</p>
              <p class="publishedon">Published on 01 Jan 2042, by Username</p>
              <p class="postintro">Miet gravida nulla at augue curabitae faucibulum nulla curabitur consectetus dolorem. Ametuervestibus nam nibh laculis vivamus suscinia masse convallis sollis quam males.</p>
              <p class="readmore"><a href="#">Read More &raquo;</a></p>
            </li>
            <li class="last">
              <p class="posttitle">Justoid nonummy laoreet phasellent</p>
              <p class="publishedon">Published on 01 Jan 2042, by Username</p>
              <p class="postintro">Miet gravida nulla at augue curabitae faucibulum nulla curabitur consectetus dolorem. Ametuervestibus nam nibh laculis vivamus suscinia masse convallis sollis quam males.</p>
              <p class="readmore"><a href="#">Read More &raquo;</a></p>
            </li>
          </ul>
        </div>
        <!-- ########### -->
        <div id="tabs-2" class="tabcontainer">
          <ul class="twitterfeed">
            <li><a href="#">@namehere</a> Justoid nonummy laoreet phasellent penatoque in antesque pellus elis eget tincidunt. Nequatdui laorem justo a non tellus laoreet tincidunt ut vel velit. <span>1 day ago</span></li>
            <li><a href="#">@namehere</a> Justoid nonummy laoreet phasellent penatoque in antesque pellus elis eget tincidunt. Nequatdui laorem justo a non tellus laoreet tincidunt ut vel velit. <span>1 day ago</span></li>
            <li><a href="#">@namehere</a> Justoid nonummy laoreet phasellent penatoque in antesque pellus elis eget tincidunt. Nequatdui laorem justo a non tellus laoreet tincidunt ut vel velit. <span>1 day ago</span></li>
            <li class="last"><a href="#">@namehere</a> Justoid nonummy laoreet phasellent penatoque in antesque pellus elis eget tincidunt. Nequatdui laorem justo a non tellus laoreet tincidunt ut vel velit. <span>1 day ago</span></li>
          </ul>
        </div>
        <!-- ########### -->
        <div id="tabs-3" class="tabcontainer">
          <ul>
            <li><a href="#">Lorem ipsum dolor sit</a></li>
            <li><a href="#">Amet consectetur</a></li>
            <li><a href="#">Praesent vel sem id</a></li>
            <li><a href="#">Curabitur hendrerit est</a></li>
            <li><a href="#">Aliquam eget erat nec sapien</a></li>
            <li><a href="#">Cras id augue nunc</a></li>
            <li><a href="#">In nec justo non</a></li>
            <li><a href="#">Vivamus mollis enim ut</a></li>
            <li class="last"><a href="#">Sed a nulla urna</a></li>
          </ul>
        </div>
      </div>
      <h2>Keep Up To Date</h2>
      <ul class="socialize">
        <li><span>Facebook:</span> <a href="#">www.facebook.com/myhandel</a></li>
        <li><span>Twitter:</span> <a href="#">www.twitter.com/myhandel</a></li>
        <li class="last"><span>LinkedIn:</span> <a href="#">www.linkedin.com/myhandel</a></li>
      </ul>
    </div>
  </div>
  <div id="backtotop"><a href="#top" class="topOfPage">To The Top</a></div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper">
  <div id="copyright" class="clear">
    <p class="fl_left">Copyright &copy; 2014 - All Rights Reserved - <a href="#">Domain Name</a></p>
    <p class="fl_right">Template by <a target="_blank" href="http://www.os-templates.com/" title="Free Website Templates">OS Templates</a></p>
  </div>
</div>
</body>
</html>