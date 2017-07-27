<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reporting.aspx.cs" Inherits="AR_System.ARS.Modules.reporting" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Home | AR System</title>
    <%-- ------ CSS ------ --%>
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="css/animate.min.css" rel="stylesheet" type="text/css" />
    <link href="css/prettyPhoto.css" rel="stylesheet" type="text/css" />
    <link href="css/main.css" rel="stylesheet" type="text/css" />
    <link href="css/responsive.css" rel="stylesheet" type="text/css" />
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"
        rel="stylesheet" type="text/css" />
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
    <link rel="shortcut icon" href="images/favicon.ico" />
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.6/jquery.min.js" type="text/javascript"></script>
    <script src="https://use.fontawesome.com/16980fc6c3.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"
        type="text/javascript"></script>
    <link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css"
        rel="Stylesheet" type="text/css" />
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script src="js/Gruntfile.js" type="text/javascript"></script>
    <script src="js/flipclock.js" type="text/javascript"></script>
    <script src="js/flipclock.min.js" type="text/javascript"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.6/jquery.min.js" type="text/javascript"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"
        type="text/javascript"></script>
    <link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css"
        rel="Stylesheet" type="text/css" />
    <script type="text/javascript">
        $(document).ready(function () {
            //  $('.main - slider').focus();
            $(this).find('input[type="checkBox"]').focus();
        });
       
    </script>
    <style type="text/css">
        .repotingTitle
        {
            color: black;
            margin-left: 20px;
            font-weight: 700;
            font-size: 20px;
        }
        .form-control
        {
            width: 17%;
        }
        .reportLabel input[type="checkbox"] 
{ 
    margin-right: 5px; 
}
    </style>
</head>
<body>

    <form id="form1" runat="server" style="background-color:yellow">
    <header id="header">
    <div class="top-bar">
    <div class="container">
    <div class="row">
    
    </div>
      </div><%--container--%>
        </div><%--/top-bar--%>
      <nav class="navbar navbar-inverse" role="banner">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="Default.aspx"><img src="" alt="AR Systems"></a>
                </div>
				
                <div class="collapse navbar-collapse navbar-right">
                    <ul class="nav navbar-nav">
                        <li ><a href="Default.aspx">Home</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">AR Deptor Entry <i class="fa fa-angle-down"></i></a>
                            <ul class="dropdown-menu">
                                <li><a href="entry_invoice.aspx">Invoice</a></li>
                                <li><a href="entry_payment.aspx">Payment</a></li>
                            </ul>
                        </li>
                        <li class="dropdown-menu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">AR Debtor Bank					
 <i class="fa fa-angle-down"></i></a>
                            <ul class="dropdown-menu">
                                <li ><a href="bank_slip.aspx">Slip</a></li>
                                <li><a href="bank_recon.aspx">Reconciliation</a></li>
                            </ul>
                        </li>
                       <li class="active"><a href="reporting.aspx">AR Debtor Reporting										
</a></li>
                        <li><a href="query.aspx">AR Debtor Query										
</a></li>            
                        <li><a href="maintenance.aspx">AR Debtor Maintenance										
</a></li>                        
                    </ul>
                </div>
                <div class="your-clock"> </div>
            </div><!--/.container-->
        </nav><!--/nav-->
 <style>
     td
     {
         padding-left: 15px;
         padding-top: 10px;
     }
 </style>
    </header>
    <section id="main-slider" class="no-margin">
        <div class="carousel slide" style="background-color: #dacccc;font-family:'Source Sans Pro',Sans-Serif;">
         <br />
            <div class="carousel-inner">
                <div id="reporting">
               <div class="row">
                    <h4 class="repotingTitle col-md-12"><i class="fa fa-pencil-square-o" style="color: darkblue;" ></i>AR Debtor Report</h4>
               </div>
                </div>
                <div class="row" style="margin-left:5px;">
                  <div class="col-md-12" style="color:Black;margin-bottom:6px;">Select Report</div>                                           
                </div>
                    <div class="row" style="margin-left:5px;width: 80%;">
                        <div class="col-md-3">
                            <asp:CheckBox ID="CheckBox1"  class="reportLabel"  runat="server" Text="Statement of Account" ></asp:CheckBox>
                            <asp:Label ID="Label1" class="reportLabel"   runat="server"  ForeColor="Black" ></asp:Label>
                        </div>
                              <div class="col-md-3">
                                <asp:CheckBox ID="CheckBox8"   class="reportLabel"  runat="server" Text="Weekly Update"></asp:CheckBox>
                                        <asp:Label ID="Label15" class="reportLabel"   runat="server"  
                                                ForeColor="Black"></asp:Label>
                              </div>      
                <div class="col-md-3">
                                  
                           <asp:CheckBox ID="CheckBox9"  class="reportLabel" runat="server" Text="Suspension/Barring Status"></asp:CheckBox>
                                        <asp:Label ID="Label14"  class="reportLabel" runat="server"  
                                                ForeColor="Black"></asp:Label> 
                      </div>
                                        
                </div>
   
                <br />
                <br />
                <div class="row m-l-5" >
    
                    <asp:Label ID="Label16" runat="server" class="col-md-2 m-t-5 fa-user "  Text="Customer Name"  ForeColor="Black"></asp:Label> 
                    <asp:TextBox ID="TextBox22" runat="server" class="col-md-2 form-control" style="margin-left:-5%" ></asp:TextBox>
                    <div class="col-md-1"></div>
                    <asp:Label ID="LblVslCode" runat="server" class="col-md-2 m-t-5 fa-id-badge "  Text="Code" ForeColor="Black"  style="margin-left: -68px;"></asp:Label> 
                    <asp:TextBox ID="TextBox23" runat="server" class="col-md-2 form-control"  style="margin-left:-8%;"   ></asp:TextBox>
                 </div>
                 <div class="row m-l-5 m-t-5" >
                    <asp:Label ID="Label18" runat="server" class="col-md-2 m-t-5 fa-ship "  Text="Ship Name" ForeColor="Black"></asp:Label> 
                                  <asp:TextBox ID="TextBox24" runat="server" class="col-md-2 form-control" style="margin-left:-5%"></asp:TextBox>
                     <div class="col-md-1"></div>
                     <asp:Label ID="Label19" runat="server"   class="col-md-2 m-t-5 fa-shirtsinbulk"   Text="Code" ForeColor="Black"  style="margin-left: -68px;"></asp:Label> 
                                  <asp:TextBox ID="TextBox25" runat="server" class="col-md-2 form-control" style="margin-left:-8%" ></asp:TextBox>
                  </div>

 <br />
                 <div class="row" id="userentry" style="margin-left:10px;">
                <asp:Label ID="Label20" runat="server"   class="col-md-1"  Text="Invoice No" ForeColor="Black"></asp:Label> 
                      <asp:Label ID="Label21" runat="server"   class="col-md-1"  Text="Date" ForeColor="Black"></asp:Label> 
                      <asp:Label ID="Label22" runat="server"  class="col-md-1"  Text="Amount" ForeColor="Black"></asp:Label> 
               <asp:Label ID="Label23" runat="server"  class="col-md-1"  Text="30 Days"  ForeColor="Black" style="text-align:center"></asp:Label> 
                <asp:Label ID="Label24" runat="server"  class="col-md-1"  Text="60 Days" ForeColor="Black" style="margin-left: 36px;"></asp:Label> 
                   <asp:Label ID="Label25" runat="server"   class="col-md-1"  Text="90 Days" ForeColor="Black" style="text-align:center"></asp:Label> 
                  <asp:Label ID="Label26" runat="server"   class="col-md-2"  Text="over 120 Days" ForeColor="Black" style="margin-left: 28px;"></asp:Label> 
                             </div>  
                              
                              <div class="row" id="Div1" style="margin-left:10px;">
                            <div class="add">
                               <asp:TextBox ID="TextBox26" runat="server" class="col-md-1 form-control" style="width: 7%;" ></asp:TextBox>
                 <asp:TextBox ID="TextBox27" runat="server" class="col-md-1 form-control" style="width: 8%;"    ></asp:TextBox> 
                      <asp:TextBox ID="TextBox28" runat="server" class="col-md-1  form-control"  style="width: 9%;"   ></asp:TextBox>
                      <asp:TextBox ID="TextBox29" runat="server" class="col-md-2  form-control"   style="width: 10%;"   ></asp:TextBox>               
             <asp:TextBox ID="TextBox30" runat="server" class="col-md-2  form-control"  style="width: 10%;" ></asp:TextBox>                       
              <asp:TextBox ID="TextBox31" runat="server" class="col-md-2  form-control"  style="width: 10%;"   ></asp:TextBox>                      
               <asp:TextBox ID="TextBox32" runat="server" class="col-md-2  form-control"  style="width: 10%;"  ></asp:TextBox>
              <div class="iconBtn" style="position:relative;left:10px;">
                    <div><i class="fa fa-plus-circle" aria-hidden="true"></i></div>
                    <div><i class="fa fa-minus-circle" aria-hidden="true"></i></div>
                </div> 

                                          </div>      </div>
                             </div>
                                 <div class="row" id="Div2" style="margin-left:10px;">
                               <asp:TextBox ID="TextBox33" runat="server" class="col-md-1 form-control"  style="width: 7%;" ></asp:TextBox>
                 <asp:TextBox ID="TextBox34" runat="server" class="col-md-1 form-control"  style="width: 8%;"     ></asp:TextBox> 
                      <asp:TextBox ID="TextBox35" runat="server" class="col-md-1 form-control"  style="width: 9%;"   ></asp:TextBox>
                      <asp:TextBox ID="TextBox36" runat="server" class="col-md-2 form-control"  style="width: 10%;"   ></asp:TextBox>               
             <asp:TextBox ID="TextBox37" runat="server" class="col-md-2 form-control"  style="width: 10%;"    ></asp:TextBox>                       
              <asp:TextBox ID="TextBox38" runat="server" class="col-md-2 form-control"  style="width: 10%;"    ></asp:TextBox>                      
               <asp:TextBox ID="TextBox39" runat="server" class="col-md-2 form-control"  style="width: 10%;"   ></asp:TextBox>
                                                
                             </div>  
                                 <div class="row" id="Div3" style="margin-left:10px;">
                               <asp:TextBox ID="TextBox40" runat="server" class="col-md-1 form-control"  style="width: 7%;"  ></asp:TextBox>
                 <asp:TextBox ID="TextBox41" runat="server" class="col-md-1 form-control" style="width: 8%;"    ></asp:TextBox> 
                      <asp:TextBox ID="TextBox42" runat="server" class="col-md-1 form-control" style="width: 9%;"   ></asp:TextBox>
                      <asp:TextBox ID="TextBox43" runat="server" class="col-md-2 form-control"  style="width: 10%;"  ></asp:TextBox>               
             <asp:TextBox ID="TextBox44" runat="server" class="col-md-2 form-control" style="width:10%;"   ></asp:TextBox>                       
              <asp:TextBox ID="TextBox45" runat="server" class="col-md-2 form-control" style="width: 10%;"   ></asp:TextBox>                      
               <asp:TextBox ID="TextBox46" runat="server" class="col-md-2 form-control" style="width: 10%;"    ></asp:TextBox>
                                                
                             </div>  
                                 <div class="row" id="Div4" style="margin-left:10px;">
                               <asp:TextBox ID="TextBox47" runat="server" class="col-md-1 form-control" style="width: 7%;"></asp:TextBox>
                 <asp:TextBox ID="TextBox48" runat="server" class="col-md-1 form-control" style="width: 8%;"></asp:TextBox> 
                      <asp:TextBox ID="TextBox49" runat="server" class="col-md-1 form-control" style="width: 9%;"></asp:TextBox>
                      <asp:TextBox ID="TextBox50" runat="server" class="col-md-2 form-control" style="width: 10%;"  ></asp:TextBox>               
             <asp:TextBox ID="TextBox51" runat="server" class="col-md-2 form-control" style="width: 10%;"  ></asp:TextBox>                       
              <asp:TextBox ID="TextBox52" runat="server" class="col-md-2 form-control" style="width: 10%;"  ></asp:TextBox>                      
               <asp:TextBox ID="TextBox53" runat="server" class="col-md-2 form-control" style="width: 10%;"></asp:TextBox>
                                </div> 
                                  <br />
                                  <br />
                                   <div class="row" >
                                   <asp:Label ID="Label2" class="col-md-2"  runat="server" Text="Do You want to send"  style="margin-left:10px;" ForeColor="Black"></asp:Label>
                               
                                    <asp:CheckBox ID="ChkBoxCustomer" class="col-md-2 reportLabel " runat="server" Text="Customer"></asp:CheckBox>
                                    <asp:Label ID="lblCustomer"  class="reportLabel"  runat="server"  ForeColor="Black"></asp:Label>
                                   </div>
                                     <div class="row">
                                   <div class="col-md-2" style="margin-left:10px;"  ></div>
                                    <asp:CheckBox ID="chkBoxPersonIcharge" class="col-md-2 reportLabel" runat="server" Text="Person In Charge"></asp:CheckBox>
                                    <asp:Label ID="lblPerson"  class="reportLabel"  runat="server"  ForeColor="Black"></asp:Label>
                                   </div>
                                      <div class="row">
                                   <div class="col-md-2"  style="margin-left:10px;" ></div>
                                    <asp:CheckBox ID="chkBoxOthers" class="col-md-2 reportLabel" runat="server" Text="Others"></asp:CheckBox>
                                    <asp:Label ID="lblOthers"  class="reportLabel"  runat="server"  ForeColor="Black"></asp:Label>
                                   </div>
                                    
                <div class="row">
                </div>
                <div class="row">
                <div class="col-md-5"></div>
                                   <asp:Button ID="btnSubmit" class="btn-primary" runat="server" Text="Submit"  style="font-weight:bold;margin-left:-700px;"></asp:Button>
                                    <div class="col-md-5"></div>
                                    </div>
                               <br />
                               <br />
                </div>
                
                    
            </div><!--/.carousel-inner-->
        </div><!--/.carousel-->
        
    </section>
    <!--/#main-slider-->
    <!--/#bottom-->
    <footer id="footer" class="midnight-blue">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    &copy; 2017 <a target="_blank" href="#" title="">AR System</a>. All Rights Reserved.
                </div>
                <div class="col-sm-6">
                    <ul class="pull-right">
                        <li><a href="#">Home</a></li>
                        <li><a href="#">About Us</a></li>
                        <li><a href="#">Faq</a></li>
                        <li><a href="#">Contact Us</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <a href="#" class="back-to-top"><i class="fa fa-2x fa-angle-up"></i></a>
    </footer>
    <!--/#footer-->
    <!-- Back To Top -->
    <script type="text/javascript">
        jQuery(document).ready(function () {
            var offset = 300;
            var duration = 500;
            jQuery(window).scroll(function () {
                if (jQuery(this).scrollTop() > offset) {
                    jQuery('.back-to-top').fadeIn(duration);
                } else {
                    jQuery('.back-to-top').fadeOut(duration);
                }
            });

            jQuery("input[type=checkbox]").change(function () {

                if ($(this).is(":checked")) {
                    $(this).next().css('color', '#0c0cc1');
                    $(this).next().css('font-style', 'italic');
                }
                else {
                    $(this).next().css('color', '#4e4e4e');
                    $(this).next().css('font-style', 'normal');
                }
            })

            jQuery('.back-to-top').click(function (event) {
                event.preventDefault();
                jQuery('html, body').animate({ scrollTop: 0 }, duration);
                return false;
            })
            var clock = jQuery('.your-clock').FlipClock({
                // ... your options here
            });
        });
    </script>
    <!-- /top-link-block -->
    <!-- Jscript -->
    <script src="js/jquery.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <script src="js/jquery.prettyPhoto.js" type="text/javascript"></script>
    <script src="js/jquery.isotope.min.js" type="text/javascript"></script>
    <script src="js/main.js" type="text/javascript"></script>
    <script src="js/wow.min.js" type="text/javascript"></script>
    </form>
</body>
</html>
